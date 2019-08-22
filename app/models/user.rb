class User < ApplicationRecord


    has_many :trips
    has_many :countries, through: :trips
    has_many :posts
    has_many :likes
    has_many :likes, dependent: :destroy
    accepts_nested_attributes_for :trips
    validates :name, presence: true
    validates :username, presence: true, uniqueness: true
    validates :password, 
        presence: true
    #     length: { in: (8..25) }, 
    #     format: { with: PASSWORD_FORMAT }, 
    #     confirmation: true, 
    #     on: :create 
    # validates :password, 
    #     allow_nil: true, 
    #     length: { in: (8..25)}, 
    #     format: { with: PASSWORD_FORMAT }, 
    #     confirmation: true, 
    #     on: :update
          has_secure_password

    def user_past_trips
        self.trips.uniq.sort_by{|trip| trip.start_date}.each do |trip|
            if trip.end_date > Date.today 
                trip
            end
        end
    end

    def user_future_trips
        self.trips.uniq.sort_by{|trip| trip.start_date}.each do |trip|
            if trip.end_date < Date.today 
                trip
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