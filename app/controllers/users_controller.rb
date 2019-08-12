class UsersController < ApplicationController
	def index
		@user = User.all
	end
	
	def show
		@user = User.find(params[:id])
	end
	def new
  		@user = User.new 
 	end

  	def create
  		@user = User.new(ad_params)

  		if @user.save
  			redirect_to new_session_path
  		else
  			render "new"
  		end
  	end
  
  	def ad_params
  		params.require(:user).permit( :first_name, :last_name, :email, :description, :age, :city_id, :password, :password_confirmation)
	end

end
