class Trip < ApplicationRecord
    belongs_to :user
    has_many :flights
    has_many :countries, through: :flights
    accepts_nested_attributes_for :flights
    validates :name, presence: true
    validates :start_date, presence: true
    validates :end_date, presence: true
    validate :valid_date?

    def expiration_date_cannot_be_in_the_past
        if expiration_date.present? && expiration_date < Date.today
          errors.add(:expiration_date, "can't be in the past")
        end
      end

    def valid_date?
        if start_date.present? && start_date > end_date
            errors.add(:start_date, "start date must be before end date")
        end
    end
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
