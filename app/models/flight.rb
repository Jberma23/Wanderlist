class Flight < ApplicationRecord
    belongs_to :trip 
    belongs_to :country



    def flight_info
        "num: #{self.flight_number} origin: #{self.origin_airport} destination: #{self.destination_airport}"
    end
end
