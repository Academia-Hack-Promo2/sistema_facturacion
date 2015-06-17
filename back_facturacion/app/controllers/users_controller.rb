class UsersController < ApplicationController
  
  def index
    @users = User.all 
  end

  def show
    @user = []
      user = User.find(params[:id])
      @user.push(user)
  end
end
