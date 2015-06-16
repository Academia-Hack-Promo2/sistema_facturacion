class AssociatedsController < ApplicationController
	skip_before_filter  :verify_authenticity_token

  def index
  	@associateds = Associated.where(:status => 0)
  end

  def show
    @associated = []
      associated = Associated.find(params[:id])
      @associated.push(associated)
  end

  def create
    associated = Associated.new(permit)
    if associated.valid?
      associated.save
      render json: associated, :except => [:created_at, :updated_at]
    else render json: {"Mensaje":"El formato no es valido"}
    end
  end
  
  def update
    if Associated.exists?(params[:id])
      associated = Associated.update(params[:id], permit)
      render json: associated, :except => [:created_at, :updated_at]
    else 
      render json: {"Mensaje":"El asociado no existe"}
    end
  end

  def destroy
    if Associated.exists?(params[:id])
      associated = Associated.find(params[:id])
      associated.status = 1
      associated.save
      render json: associated, :except => [:created_at, :updated_at]
    else 
      render json: {"Mensaje":"El asociado no existe"}
    end
  end


  def all
  	associateds = Associated.all
		if associateds
			render json: associateds, :except => [:created_at, :updated_at]
		else 
			render json: {"Mensaje":"no hay asociados registrados"}
		end  	
  end

  def customers
    customers = Associated.where(kind: 0, status:0)
    if customers
      render json: customers, :except => [:created_at, :updated_at]
    else
      render json: {"Mensaje":"no hay clientes registrados"}
    end
  end

  def all_customers 
    customers = Associated.where(kind:0)
    if customers
      render json: customers, :except => [:created_at, :updated_at]
    else
      render json: {"Mensaje":"no hay clientes registrados"}
    end
  end

  def sponsors
    sponsors = Associated.where(kind:1, status:0)
    if sponsors.length>=1
      render json: sponsors, :except => [:created_at, :updated_at]
    else
      render json: {"Mensaje":"no hay sponsors registrados"}
    end
  end

  def all_sponsors
    sponsors = Associated.where(kind:1)
    if sponsors
      render json: sponsors, :except => [:created_at, :updated_at]
    else
      render json: {"Mensaje":"no hay sponsors registrados"}
    end
  end

  def providers
    providers = Associated.where(kind: 2)
    if providers
      render json: providers, :except => [:created_at, :updated_at]
    else
      render json: {"Mensaje":"no hay proveedores registrados"}
    end
  end

  private

  def permit
  	params.require(:associated).permit(:name, :ci_rif, :alias, :email, :phone, :address, :kind, :frequency,
  								:description, :status, :user_id)
  end
end




