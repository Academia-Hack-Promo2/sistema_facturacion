class InvoicesController < ApplicationController

	skip_before_filter  :verify_authenticity_token
  
  def index
  	invoices = Invoice.all
  	if invoices != nil
  		render json: invoices, except: [:created_at, :updated_at]
  	else
  		render json: {"Mensaje":"no hay facturas creadas"}
  	end
  end

  def create
  	invoice = Invoice.new(permit)
  	if invoice.valid?
  		invoice.save
  		render json: invoice, except: [:created_at, :updated_at]
  	else
  		render json: {"Mensaje":"parametros incorrectos"}
  	end
  end

  def update
  	if Invoice.exists?(params[:id]) 
  		invoice = Invoice.find(params[:id])
  		if invoice.status_operation == false
	  		invoice = Invoice.update(params[:id], permit)
	  		render json: invoice
  		else
  			render json: {"Mensaje":"La factura ya esta activa"}	
  		end
  	else
  		render json: {"Mensaje":"La factura no existe"}
  	end
  end

  def destroy
  	if Invoice.exists?(params[:id])
  		invoice = Invoice.find(params[:id])
  		if invoice.status_operation == false
  			invoice.destroy
  			render json: invoice
  		else
  		render json: {"Mensaje":"La factura esta activa y no puede ser eliminada"}	
  		end
  	else	
  		render json: {"Mensaje":"La factura no existe"}
  	end
  end

  def sale
  	invoices = Invoice.where(kind_operation: 0)
  	if invoices.length>=1
  		render json: invoices
  	else
  		render json: {"Mensaje":"No tienes ventas"}
  	end
  end

  def shopping
  	invoices = Invoice.where(kind_operation: 1)
  	if invoices.length>=1
  		render json: invoices
  	else
  		render json: {"Mensaje":"No tienes compras"}
  	end
  end

  def active
  	invoices = Invoice.where(status_operation: true)
  	if invoices.length>=1
  		render json: invoices
  	else
  		render json: {"Mensaje":"No tienes facturas activas"}
  	end
  end

  def inactive
  	invoices = Invoice.where(status_operation: false)
  	if invoices.length>=1
  		render json: invoices
  	else
  		render json: {"Mensaje":"No tienes facturas inactivas"}
  	end
  end

  private

	  def permit
	  	params.permit(:kind_operation, :status_operation, :total,
	  								:kind_payment, :description, :date, :document, :payment_proof,)
	  end	
end
