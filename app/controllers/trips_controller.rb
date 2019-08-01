class TripsController < ApplicationController
  helper_method :current_username
  helper_method :current_user
  before_action :find_trip, only: [:show, :update, :edit, :destroy]
  

  def index
    @trips = current_user.trips
  end

  def show
  end
  
  def new
    @user = current_user
    @trip = Trip.new
    @user.trips.build()
    @trip.flights.build()
  end
  
  def create
    @trip = Trip.create(trip_params)
    if @trip.valid?
      redirect_to trip_path(@trip)
    else
      render :new
    end
  end

  def edit
  end

  def update
      @trip.update(trip_params)
      if @trip.valid?
          @trip.save
          redirect_to trip_path(@trip)
      else
          render :edit
      end
  end

  def destroy
    @trip = Trip.destroy(params[:id])
    if @trip
      redirect_to trips_path
    else
      redirect_to new_trip_path
    end
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :start_date, :end_date, :user_id, :flights_id, flights_attributes:[ :flight_number, :country_id, :trip_id, :origin_airport, :destination_airport])
  end

  def find_trip
    @trip = current_user.trips.find(params[:id])
  end
end
