class ProductsController < ApplicationController
  def index
    @products = Product.all 
  end

  def show
  end

  def new
    @product = Product.new  
  
  end

  def create
    @product = Product.new(permit)
    if @product.save
      redirect_to products_path
    else
      render 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(permit)
      redirect_to products_path, :notice => 'Product Successfully Updated.'
    else
      render 'edit'
    end
  end

  def destroy    
    if Product.find(params[:id]).destroy
      redirect_to products_path, :notice => 'Product Successfully Deleted.'
    else
      render 'destroy'
    end 
  end  

  def show_one 
  exist = Product.exists?(params[:id])     
    if exist
      render json: Product.find(params[:id]), :except => [:created_at, :updated_at]
    else
      render json: {"Mensaje": "El Producto No Existe" }
    end
  end    

  private
  def permit
    params.require(:product).permit(:name, :description, :price, :date, :quantity, :user_id, :invoice_id)
  end
end
