class SessionsController < ApplicationController
  def new
  	@session = User.new 
  end

  def create
  	user = User.find_by_email(params[:email])
  	if user.authenticate(password[:password])
  		cookies[:id] = user.id
  		redirect_to root_path
  	else
  		flash.now.alert = "invalide your password or your email"
  		render "new"
  	end
  	
  end
 def destroy
 	cookies.delete(params[:last_name])
 end
end
