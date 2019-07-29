class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :flight_number
      t.integer :country_id
      t.integer :trip_id
      t.string :origin_airport
      t.string :destination_airport

      t.timestamps
    end
  end
end
