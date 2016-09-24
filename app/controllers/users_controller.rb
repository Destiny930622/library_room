class UsersController < ApplicationController

	before_action :find_user, only:[:show, :edit, :update, :destroy]

	def index
		@users = User.all.order("created_at DESC")
	end

	def show
		
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if user.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
		
	end

	def update
		if @user.update(user_params)
			redirect_to user_path(@user)
		else
			render 'edit'			
		end
	end

	private

		def user_params
	      params.require(:user).permit(:email, :password, :name, :address, :telephone)
	    end

	    def find_user
			@user = User.find(params[:id])
		end
end
