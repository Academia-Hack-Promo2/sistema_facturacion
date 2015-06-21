class InvoicesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @invoices = Invoice.all
  end

  def show
    @invoice = []
      invoice = Invoice.find(params[:id])
      @invoice.push(invoice)
  end

  def new
    @invoice = Invoice.new   
  end

  def create
    @invoice = Invoice.new(permit)
    if @invoice.save
      redirect_to invoices_path, :notice => 'Bill Successfully Added.'
    else
      render 'new'
    end
  end 

  def edit
    @invoice = Invoice.find(params[:id])
  end

  def update
    @invoice = Invoice.find(params[:id])
    if @invoice.kind_invoice == 'Draft'
      if @invoice.update(permit)
        redirect_to invoices_path, :notice => 'Draft Bill Successfully Updated.'
      else
        render 'edit'
      end
    else
      redirect_to invoices_path, :alert => 'The Legal Bill Should Not Be Changed.'
    end
  end 

  def destroy    
    @invoice = Invoice.find(params[:id])
    if @invoice.kind_invoice == 'Draft'
      if @invoice.destroy
        redirect_to invoices_path, :notice => 'Draft Bill Successfully Deleted.'
      else
        render 'destroy'
      end
    else
      redirect_to invoices_path, :alert => 'The Legal Bill Should Not Be Deleted.'
    end
  end  

  def sales 
    @sales = Invoice.where(kind_operation: 0)
  end

  def sales_draft 
    @sales = Invoice.where(kind_operation: 0, kind_invoice: 0)
  end  

  def sales_legal 
    @sales = Invoice.where(kind_operation: 0, kind_invoice: 1)
  end

  def sales_cash 
    @sales = Invoice.where(kind_operation: 0, kind_payment: 0)
  end

  def sales_credit 
    @sales = Invoice.where(kind_operation: 0, kind_payment: 1)
  end

  def purchases 
    @purchases = Invoice.where(kind_operation: 1)
  end

  def purchases_draft 
    @purchases = Invoice.where(kind_operation: 1, kind_invoice: 0)
  end

  def purchases_legal 
    @purchases = Invoice.where(kind_operation: 1, kind_invoice: 1)
  end

  def purchases_cash 
    @purchases = Invoice.where(kind_operation: 1, kind_payment: 0)
  end

  def purchases_credit 
    @purchases = Invoice.where(kind_operation: 1, kind_payment: 1)
  end  

  private

	  def permit
	  	params.require(:invoice).permit(:kind_operation, :kind_payment, :kind_invoice, :description, :subtotal, :tax, :total,
	  								:balance, :date, :document, :payment_proof, :associated_id, :user_id)
	  end	
end
