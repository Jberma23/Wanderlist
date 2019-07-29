class TripsController < ApplicationController
    before_action :find_trip, only: [:show]
    
    def index 
    end 
    def show
    end 
    def new
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
    def trip_params
        params.require(:trip).permit(:start_date, :end_date, :user_id)
    end 
    def find_trip 
        @trip = Trip.find_by(params[:id])
    end
end
