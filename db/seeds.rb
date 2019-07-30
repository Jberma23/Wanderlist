User.destroy_all
Trip.destroy_all
Country.destroy_all
Flight.destroy_all

# require 'faker'
#
#
#
# user_counter = 0
# unless user_counter > 150
#     20.times do
#         User.create(name:"#{Faker::Name.name}", passport_number: Faker::Number.number(9), username: "#{Faker::Internet.username}",password: "#{Faker::Internet.password}")
#
#         User.create(name:"#{Faker::Name.name}", passport_number: Faker::Number.number(9), username: "#{Faker::Internet.username}",password: "#{Faker::Internet.password}")
#
#         User.create(name:"#{Faker::Name.name}", passport_number: Faker::Number.number(9), username: "#{Faker::Internet.username}",password: "#{Faker::Internet.password}")
#
#         User.create(name: "#{Faker::Name.name}", passport_number: Faker::Number.number(9), username: "#{Faker::Internet.username}",password: "#{Faker::Internet.password}")
#
#         User.create(name:"#{Faker::Name.name}", passport_number: Faker::Number.number(9), username: "#{Faker::Internet.username}",password: "#{Faker::Internet.password}")
#         user_counter += 1
#     end
# end
#
#
#
# trip_counter = 0
# unless trip_counter > 150
#     10.times do
#         Trip.create(name:"#{Faker::Name.name}", start_date: Faker::Date.between(100.days.ago, Date.today), end_date: Faker::Date.between(Date.today, 1.year.from_now), user_id: User.all.sample.id)
#
#         Trip.create(name:"#{Faker::Name.name}", start_date: Faker::Date.between(1.year.ago, 8.months.ago), end_date: Faker::Date.between( 8.months.ago, 9.months.ago), user_id: User.all.sample.id)
#
#
#         Trip.create(start_date: Faker::Date.between(1.year.ago, 6.months.ago), end_date: Faker::Date.between( 6.months.ago, 4.months.ago), user_id: User.all.sample.id)
#
#         trip_counter += 1
#     end
# end
#
#
#
# country_counter = 0
# unless country_counter > 150
#     25.times do
#         Country.create(name: "#{Faker::Address.country}", currency: "#{Faker::Currency.code}")
#
#         Country.create(name: "#{Faker::Address.country}", currency: "#{Faker::Currency.code}")
#
#         Country.create(name: "#{Faker::Address.country}", currency: "#{Faker::Currency.code}")
#
#         Country.create(name: "#{Faker::Address.country}", currency: "#{Faker::Currency.code}")
#
#         country_counter += 1
#     end
# end
#
# flight_counter = 0
# unless flight_counter > 100
#     20.times do
#         Flight.create(flight_number: Faker::Number.number(3), country_id: Country.all.sample.id, trip_id: Trip.all.sample.id, origin_airport:"#{
#         Faker::Name.initials}", destination_airport: "#{Faker::Name.initials}")
#
#         Flight.create(flight_number: Faker::Number.number(4), country_id: Country.all.sample.id, trip_id: Trip.all.sample.id, origin_airport: "#{Faker::Name.initials}", destination_airport: "#{Faker::Name.initials}")
#         flight_counter += 1
#     end
# end

claudia = User.create(name:"Claudia Solbes", passport_number: 8403948204, username: "claudiasolbes",password: "password")
jesse = User.create(name:"Jesse", passport_number: 8403948204, username: "claudiasolbes",password: "password")

bahamas = Trip.create(name:"Bahamas", :start_date => "Fri, 26 Oct 2018", :end_date => "Sat, 27 Oct 2018", user_id:508)
portugal = Trip.create(name:"Portugal", :start_date => "Thurs, Aug 1, 2019", :end_date => "Sat, Aug 3, 2019", user_id:509)

usa = Country.create(name:"United States of America", currency:"US Dollar")
mex = Country.create(name:"Mexico", currency:"MX Peso")

AA309 = Flight.create(flight_number:309, country_id:505, trip_id:63, origin_airport:"TAM", destination_airport:"DCA")
S289 = Flight.create(flight_number:289, country_id:506, trip_id:64, origin_airport:"BWI", destination_airport:"FLA")

fishing = Activity.create(trip_id:63, name:"fishing", description:"get on a boat and catch a fish")
surfing = Activity.create(trip_id:64, name:"surfing", description:"get on a board and catch a wave")
