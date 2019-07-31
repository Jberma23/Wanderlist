class UsersController < ApplicationController
  helper_method :current_username
  helper_method :current_user
  before_action :find_user, only: [:show, :edit, :update]

  def index
    @users = User.all.order('name ASC')
  end

  def show
    @user = current_user
    if @user.id != current_user.id
      redirect_to user_path(current_user)
    end
  end

  def new
    @user = User.new
  end

  def create
  @user = User.new(user_params)
    if @user
      @user.save
      cookies[:user_id] = @user.id
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
    redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user = User.destroy(params[:id])
    redirect_to home_path
  end


  private

  def user_params
    params.require(:user).permit(:id, :name, :passport_number, :username,
      :password)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
