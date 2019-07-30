class Trip < ApplicationRecord
    belongs_to :user
    has_many :flights
    has_many :countries, through: :flights
    accepts_nested_attributes_for :flights


    def find_user
    @user = User.find(parmas[:user_id])
    end
    def sort_by_start_date
        Trip.all.sort_by{|trip| trip.start_date}
    end
    def trip_flight
        sort_by_start_date.each do |trip|
            trip.flights.each do |flight|
                flight
            end 
        end
    end
end
