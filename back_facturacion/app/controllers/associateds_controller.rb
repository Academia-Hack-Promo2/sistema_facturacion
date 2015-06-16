class AssociatedsController < ApplicationController
	# skip_before_filter  :verify_authenticity_token

  def index
  	@associateds = Associated.all
  end

  def show
    @associated = []
      associated = Associated.find(params[:id])
      @associated.push(associated)
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
      redirect_to associateds_path, :notice => 'Associated Successfully Deleted.'
    else
      render 'destroy'
    end 
  end  

  def customers 
    @customers = Associated.where(kind: 0)
  end

  def sponsors 
    @sponsors = Associated.where(kind: 1)
  end

  def providers 
    @providers = Associated.where(kind: 2)
  end

  # def all
  # 	associateds = Associated.where(:status => 0)
		# if associateds
		# 	render json: associateds, :except => [:created_at, :updated_at]
		# else 
		# 	render json: {"Mensaje":"no hay asociados registrados"}
		# end  	
  # end

  # def customers
  #   customers = Associated.where(kind: 0, status:0)
  #   if customers
  #     render json: customers, :except => [:created_at, :updated_at]
  #   else
  #     render json: {"Mensaje":"no hay clientes registrados"}
  #   end
  # end  

  # def sponsors
  #   sponsors = Associated.where(kind:1, status:0)
  #   if sponsors.length>=1
  #     render json: sponsors, :except => [:created_at, :updated_at]
  #   else
  #     render json: {"Mensaje":"no hay sponsors registrados"}
  #   end
  # end

  # def all_sponsors
  #   sponsors = Associated.where(kind:1)
  #   if sponsors
  #     render json: sponsors, :except => [:created_at, :updated_at]
  #   else
  #     render json: {"Mensaje":"no hay sponsors registrados"}
  #   end
  # end

  # def providers
  #   providers = Associated.where(kind: 2)
  #   if providers
  #     render json: providers, :except => [:created_at, :updated_at]
  #   else
  #     render json: {"Mensaje":"no hay proveedores registrados"}
  #   end
  # end

  private

  def permit
  	params.require(:associated).permit(:name, :ci_rif, :alias, :email, :phone, :address, :kind, :frequency,
  								:description, :status, :user_id)
  end
end




