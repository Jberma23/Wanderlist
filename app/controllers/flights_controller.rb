class FlightsController < ApplicationController
    before_action :find_flight, only: [:show]

    def show
    end

    private

    def flight_params
        params.require(:flight).permit(:flight_number, :country_id, :trip_id, :origin_airport, :destination_airport)
    end
    def find_flight
        @flight = Flight.find_by(params[:id])
    end

end
