class ActivitiesController < ApplicationController
  before_action :find_activity, only: [:show]

  def index
    @activities = Activity.all
  end

  def show
  end

  private

  def country_params
      params.require(:activity).permit(:name, :description, :trip_id)
  end

  def find_activity
      @activity = Activity.find_by(params[:id])
  end
end
