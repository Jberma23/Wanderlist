User.destroy_all
Trip.destroy_all
Country.destroy_all 
Flight.destroy_all




@claudia = User.create(name:"claudia", passport_number: 56383658, username:  "claudia",password: "password" )
@jesse = User.create(name:"Jesse", passport_number:  56383658, username: "jesse",password: "notpassword" )

@trip1 = Trip.create(start_date: "2019/02/24", end_date:"2019/04/23", user_id: @claudia )
@trip2 = Trip.create(start_date: "2019/11/25", end_date:"2019/12/10", user_id: @jesse.id )

@america = Country.create(name: "America", currency: "USD")
@mexico = Country.create(name:"Mexico", currency: "MX Peso")

@flight1 = Flight.create(flight_number: 140, country_id: @america, trip_id: @trip1, origin_airport:"Ben Gurion Airport", destination_airport: "Regan National Airport, NYC")
@flight2 = Flight.create(flight_number: 747, country_id: @mexico, trip_id: @trip2, origin_airport:"Mexico City International Airport", destination_airport: "Regan National Airport, NYC")