class Country < ApplicationRecord
    has_many :flights
    has_many :trips, through: :flights 
end
