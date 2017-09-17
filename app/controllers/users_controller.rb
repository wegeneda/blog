class UsersController < ApplicationController
	def index
    	if params[:approved] == "false"
      		@admins = Admin.where(approved: false)
    	else
      		@admins = Admin.all
    	end
  	end
	def confirm_user
	    @admins = Admin.find(params[:id])
    	@admins.update_attribute :approved, params[:approve]
	end
	def show
	end
end
