class UsersController < ApplicationController
  helper_method :current_username
  helper_method :current_user
  before_action :find_user, only: [:show, :edit, :update]
  # before_action :authorized, only: [:show]

  def index
    @users = User.all.order('name ASC')
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      if @user.valid? 
        @user.save
        session[:user_id] = @user.id
        redirect_to user_path(current_user)
      else 
        render :new
    end
  end

  def show
    @user = User.find(params[:id])
    if @user.id != current_user.id
      redirect_to user_path(current_user)
    end
  end

  def edit
  end

  def update
    @user.update(user_params)
    if @user.valid?
    @user.save
    redirect_to user_path(@user.id)
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
      :password, trip_ids: [], trips_attributes:[ :name, :start_date, :end_date])
  end

  def find_user
    @user = User.find(params[:id])
  end
end
