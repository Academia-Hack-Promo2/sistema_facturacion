class AssociatedsController < ApplicationController
  def idex
  	associateds = Associated.all
  	if associateds
  		render json: associateds
  	else
  		render json: 
  	end
  end
  def create
  end
  
  def update
  end

  def delete
  end

  private

  def permit
  end
end
