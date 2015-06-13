class ProductsController < ApplicationController
  def index
    @products = Product.all 
  end

  def show
  end

  def create
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
  end

  def show_all
    products = Product.all
    if products
      render json: products, :except => [:created_at, :updated_at]
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

  def create_one
    product = Product.new(permit)
    if product.valid?
      product.save
      render json: product, :except => [:created_at, :updated_at]
    else
      render json: product.errors.messages
    end
  end  

  def delete_one
    if Product.exists?(params[:id])
      Product.delete(params[:id])
      render json: {"Mensaje": "El Producto Fue Borrado"}
    else
      render json: {"Mensaje": "El Producto No Existe"}
    end 
  end

  private
  def permit
    params.require(:product).permit(:name, :description, :price, :date, :quantity, :user_id, :invoice_id)
  end
end
