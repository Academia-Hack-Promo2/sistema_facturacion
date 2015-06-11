class UsersController < ApplicationController
  
  	def index
  		users = User.all
  		render json: users  		
  	end
  	
  	def create
  		user = User.new(permit)
  		user.save
  		
  	end

  	private
  	def permit
  		params.permit(:email, :encrypted_password, :reset_password_token, :reset_password_sent_at,
										:remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at,
										:current_sign_in_ip, :last_sign_in_ip)
										  		
  	end
end
