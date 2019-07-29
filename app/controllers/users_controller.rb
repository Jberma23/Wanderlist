class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update]
   
    def index 
        @users = User.all
    end 

    def show
        
    end 

    def new
        @user = User.new
    end 

    def create 
    end 
    def edit
    end 

    def update
    end 
    
    def destroy
    end 


    private 
    def user_params
        params.require(:user).permit(:name, :passport_number, :username, :password)
    end
    def find_user
        @user = User.find_by(params[:id])
    end
end
