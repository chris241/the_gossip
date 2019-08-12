class SessionsController < ApplicationController
  def new
  	@session = User.new 
  end

  def create
  	@user = User.find_by_email(params[:email])
  	if @user && @user.authenticate(params[:password])
  		session[:user_id] = @user.id
  		redirect_to root_path
  	else
  		flash.now.alert = "invalide your password or your email"
  		render "new"
  	end
  	
  end
end
