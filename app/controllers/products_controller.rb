class ProductsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @products = Product.all 
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new   
  end

  def create
    @product = Product.new(permit)
    if @product.save
      redirect_to products_path, :notice => 'Product Successfully Added.'
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
      redirect_to products_path, :alert => 'Product Successfully Deleted.'
    else
      render 'destroy'
    end 
  end    

  private
  def permit
    params.require(:product).permit(:name, :description, :price, :date, :quantity, :user_id, :invoice_id)
  end
end
