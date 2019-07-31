class ActivitiesController < ApplicationController
  before_action :find_activity, only: [:show]

  def index
    @activities = Activity.all.order('name ASC')
  end

  def show
  end

  def new
    @activity = Activity.new
  end

  def create
  @activity = activity.new(activity_params)
    if @activity
      @activity.save
      cookies[:activity_id] = @activity.id
      redirect_to @activity
    else
      render :new
    end
  end
  
  private

  def activity_params
      params.require(:activity).permit(:name, :description, :trip_id)
  end

  def find_activity
      @activity = Activity.find_by(params[:id])
  end
end
