class User < ApplicationRecord
    has_many :trips
    has_many :countries, through: :trips
    has_secure_password

    def user_past_trips
        self.trips.sort_by{|trip| trip.start_date}.each do |trip|
            if trip.end_date > Date.today 
                trip.name
            end
        end
    end
    def user_future_trips
        self.trips.sort_by{|trip| trip.start_date}.each do |trip|
            if trip.end_date < Date.today 
                trip.name
            end
        end
    end
    def user_trip_countries
        self.trips.each do |trip|
            trip.flights.each do |flight|
                Country.find_by(id:flight.country_id)
            end
        end
    end
end
