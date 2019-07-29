@claudia = User.new("claudia", 56383658, "claudia", "password" )
@jesse = User.new("Jesse", 56383658, "jesse", "notpassword" )

@trip1 = Trip.new("#{DateTime.new(2019/02/24)}","#{DateTime.new(2019/04/23)}", @claudia )
@trip2 = Trip.new("#{DateTime.new(2019/11/25)}","#{DateTime.new(2019/12/10)}", @jesse )

@america = Country.new("America", "USD")
@mexico = Country.new("Mexico", "MX Peso")

@flight1 = Flight.new(140, @mmerica, @trip1, "Ben Gurion Airport", "Regan National Airport, NYC" )
@flight1 = Flight.new(730, @mexico, @trip2, "Mexico City International Airport", "Regan National Airport, NYC" )