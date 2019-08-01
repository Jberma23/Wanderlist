class Flight < ApplicationRecord
    belongs_to :trip 
    belongs_to :country
    validates :country_id, presence: true 
    validates :origin_airport, presence: true, length: {maximum: 3}
    validates :destination_airport, presence: true, length: {maximum: 3}


    def flight_info
        "num: #{self.flight_number} origin: #{self.origin_airport} destination: #{self.destination_airport}"
    end
end
