class AssociatedsController < ApplicationController
	before_filter :authenticate_user!

  def index
  	@associateds = Associated.order('created_at DESC').page(params[:page]).per(10)
  end

  def show
    @associated = Associated.includes(:invoices).find(params[:id])
  end

  def new
    @associated = Associated.new   
  end

  def create
    @associated = Associated.new(permit)
    if @associated.save
      redirect_to associateds_path, :notice => 'Associated Successfully Added.'
    else
      render 'new'
    end
  end 

  def edit
    @associated = Associated.find(params[:id])
  end

  def update
    @associated = Associated.find(params[:id])
    if @associated.update(permit)
      redirect_to associateds_path, :notice => 'Associated Successfully Updated.'
    else
      render 'edit'
    end
  end 

  def destroy    
    if Associated.find(params[:id]).destroy
      redirect_to associateds_path, :alert => 'Associated Successfully Deleted.'
    else
      render 'destroy'
    end 
  end  

  def customers 
    @customers = Associated.where(kind: 0)
  end

  def customers_recurrent 
    @customers_recurrent = Associated.where(kind: 0, frequency: 0)
  end

  def customers_punctual 
    @customers_punctual = Associated.where(kind: 0, frequency: 1)
  end

  def customers_active 
    @customers_active = Associated.where(kind: 0, status: 0)
  end

  def customers_inactive 
    @customers_inactive = Associated.where(kind: 0, status: 1)
  end

  def sponsors 
    @sponsors = Associated.where(kind: 1)
  end

  def sponsors_recurrent 
    @sponsors_recurrent = Associated.where(kind: 1, frequency: 0)
  end

  def sponsors_punctual 
    @sponsors_punctual = Associated.where(kind: 1, frequency: 1)
  end

  def sponsors_active 
    @sponsors_active = Associated.where(kind: 1, status: 0)
  end

  def sponsors_inactive 
    @sponsors_inactive = Associated.where(kind: 1, status: 1)
  end

  def providers 
    @providers = Associated.where(kind: 2)
  end

  def providers_recurrent 
    @providers_recurrent = Associated.where(kind: 2, frequency: 0)
  end

  def providers_punctual 
    @providers_punctual = Associated.where(kind: 2, frequency: 1)
  end

  def providers_active 
    @providers_active = Associated.where(kind: 2, status: 0)
  end

  def providers_inactive 
    @providers_inactive = Associated.where(kind: 2, status: 1)
  end

  private

  def permit
  	params.require(:associated).permit(:name, :ci_rif, :alias, :email, :phone, :address, :kind, :frequency,
  								:description, :status, :user_id)
  end
end




