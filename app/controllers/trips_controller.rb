class TripsController < ApplicationController
  before_action :find_trip, only: [:show, :update, :edit]

  def index
    @trips = Trip.all
  end

  def show
  end

  def new
    @trip = Trip.new
    @trip.flights.build()
  end

  def create
    # byebug
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
  end

  private

  def trip_params
<<<<<<< HEAD
    params.require(:trip).permit(:name, :start_date, :end_date, :user_id, :flights_id)
=======
    params.require(:trip).permit(:name, :start_date, :end_date, :user_id, :flights_id, flights_attributes:[ :flight_number

    ])
>>>>>>> 460c01097d6ef391c1e0e4afb8efae32bb817271
  end

  def find_trip
    @trip = Trip.find(params[:id])
  end
end
