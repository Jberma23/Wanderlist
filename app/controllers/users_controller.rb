class UsersController < ApplicationController
<<<<<<< HEAD
    before_action :find_user, only: [:show, :edit, :update]
=======
<<<<<<< HEAD
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
=======
    # before_action :find_user, only: [:show, :edit, :update]
>>>>>>> d7fc1a1f8b598744aab4e604d203847f479dc530

    def index
        @users = User.all
>>>>>>> dc9c39f7484672f7f26d44074c9cc5a0d553763a
    end
  end

<<<<<<< HEAD
  def edit
  end
=======
    def show
    end
>>>>>>> dc9c39f7484672f7f26d44074c9cc5a0d553763a

  def update
    @user.update(user_params)
    if @user
      @user.save
      redirect_to users_path(@user)
    end
  end

<<<<<<< HEAD
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
=======
    def create 
        @user = User.new(user_params)
        if @user
            @user.save
            redirect_to @user
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
            redirect_to @user
        end
    end 

    def destroy
        @user = User.destroy(params[:id])
        redirect_to users_path
    end 


    private
    def user_params
        params.require(:user).permit(:name, :passport_number, :username, :password)
    end
    def find_user
        @user = User.find(params[:id])
    end
>>>>>>> dc9c39f7484672f7f26d44074c9cc5a0d553763a
end
