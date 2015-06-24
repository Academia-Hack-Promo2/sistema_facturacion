class InvoicesController < ApplicationController
  before_filter :authenticate_user!
   prawnto :prawn => { :page_size => 'A4', :margin => 20 }

  def index
    @invoices = Invoice.all 
  end

  def show
    @invoice = []
    invoice = Invoice.find(params[:id]) 
    @invoice.push(invoice)  
    respond_to do |format|
      format.html
      format.pdf do
        pdf = InvoicePdf.new(@invoice)
        send_data pdf.render, filename: 'invoice.pdf', type: 'application/pdf'
      end
    end 
  end

  def new
    @invoice = Invoice.new   
  end

  def create
    invoice = Invoice.new(permit)
    product = Product.find(permit[:product_id])
    associated = Associated.find(permit[:associated_id])
    if Invoice.bill(product, invoice, associated)
      invoice.save
      redirect_to invoices_path, :notice => 'Bill Successfully Added.'
    else
      render 'new'
    end
  end

  def edit
    @invoice = Invoice.find(params[:id])
  end

  def update
    invoice = Invoice.find(params[:id])
    product = Product.find(permit[:product_id])
    associated = Associated.find(permit[:associated_id])
    if Invoice.change(product, invoice, associated)
      invoice.update(permit)
      if invoice.subtotal != product.price*invoice.quantity
        Invoice.change(product, invoice, associated)
      else
        invoice.update(permit)
      end
      invoice.update(permit)
      redirect_to invoices_path, :notice => 'Bill Successfully Added.'
    else
      render 'new'
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
      redirect_to invoices_path, :alert => 'The Invoice Should Not Be Deleted.'
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
    params.require(:invoice).permit(:kind_operation, :kind_payment, 
      :kind_invoice, :description, :name_product, :balance, :date, :quantity, 
      :tax, :rate, :document, :payment_proof, :associated_id, :user_id, 
      :product_id, :name_associated, :ci_associated, :address_associated)
  end
  
end
