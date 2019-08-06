class UsersController < ApplicationController
	def show_user
		@user = User.all
	end
end
