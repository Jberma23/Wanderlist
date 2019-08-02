require "rails_helper"

describe User, type: :model do
    before(context) do
        afghanistan = Country.new(name: "Afghanistan", currency: "Afghan afghani, ؋")
        malaysia = Country.new(name: "Malaysia", currency: "Malaysian ringgit, RM")
        claudia = User.new(name: "claudia solbes", passport_number: 12345678, username: "claudia", password: "Claudia_1991")
        Flight.new(flight_number: 12345, country_id: 1 ,trip_id: 1, origin_airport:"wer" , destination_airport:"cvb")
    end

    after(contex) do
        Country.destroy_all
        User.destroy_all
        Fight.destroy_all
    end

    context "#user_trip_countries" do
        it "returns all the countries a user has visited" do
        expect(@user.user_trip_countries).to eq ("Afghanistan""Malaysia")
        end
    end
end

describe User, type: :controller do
    before(context) do
        claudia = User.new(name: "claudia solbes", passport_number: 12345678, username: "claudia", password: "Claudia_1991")
    end

    after(contex) do
        User.destroy_all
    end

    context "#destroy" do
        it "delete a user" do
        expect(User.destroy).to eq (nil)
        end
    end 
end
