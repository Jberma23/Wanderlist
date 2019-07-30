class Country < ApplicationRecord
    has_many :flights
    has_many :trips, through: :flights
    has_many :users, through: :trips
end
