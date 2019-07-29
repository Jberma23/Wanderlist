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
        @user = User.new(user_params)
        if @user
            @user.save
            redirect_to users_path(@user)
        else
            render :new
        end
    end 
    def edit
    
    end 

    def update
        @user.update(user_params)
        if @user
            @user.save
            redirect_to users_path(@user)
        end
    end 

    def destroy
        @user = User.destroy(params[:id])
        redirect_to users_path(@path)
    end 


    private
    def user_params
        params.require(:user).permit(:name, :passport_number, :username, :password)
    end
    def find_user
        @user = User.find_by(params[:id])
    end
end
