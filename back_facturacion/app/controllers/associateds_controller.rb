class AssociatedsController < ApplicationController
	skip_before_filter  :verify_authenticity_token
  def index
  	associateds = Associated.where(:status => 0)
  	if associateds
  		render json: associateds, :except => [:created_at, :updated_at]
  	else
  		render json: {"Mensaje":"no hay asociados registrados"}
  	end
  end

  def create
  	associated = Associated.new(permit)
  	if associated.valid?
  		associated.save
  		render json: associated, :except => [:created_at, :updated_at]
  	#else render json: {"Mensaje":"El formato no es valido"}
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

  def show
  	if Associated.exists?(params[:id])
  		associated = Associated.find(params[:id])
  		render json: associated, :except => [:created_at, :updated_at]
  	else 
  		render json: {"Mensaje":"El asociado no existe"}
  	end
  end

  def all
  	associateds = Associated.all
		#if associateds
			render json: associateds, :except => [:created_at, :updated_at]
		#else 
		#	render json: {"Mensaje":"no hay asociados registrados"}
		#end  	
  end

  private

  def permit
  	params.permit(:name, :ci_rif, :alias, :email, :phone, :address, :kind, :frequency,
  								:description, :status, :user_id)
  end
end




