class TripsController < ApplicationController
  helper_method :current_username
  helper_method :current_user
  before_action :find_trip, only: [:show, :update, :edit, :index, :destroy]
  

  def index
    @trips = current_user.trips  
  end

  def show
  
  end
  
  def new
    @trip = Trip.new
    @trip.flights.build()
  end
  
  def create
    @trip = Trip.new(trip_params)
    if @trip
      @trip.save
      redirect_to trip_path(@trip)
    else
      render :new
    end
  end

  def edit
  end

  def update
      @trip.update(trip_params)
      if @trip
          @trip.save
          redirect_to trip_path(@trip)
      else
          render :edit
      end
  end

  def destroy
    @trip = Trip.destroy(params[:id])
    redirect_to trips_path
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :start_date, :end_date, :user_id, :flights_id, flights_attributes:[ :flight_number, :country_id, :trip_id, :origin_airport, :destination_airport])
  end

  def find_trip
    @trip = Trip.find(params[:id])
  end
end
