# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Commited by seed
User.create(name: "Jay", username: "jayb", password: "password", hometown_id: 1)
anaheim = Location.create(city:'Anaheim' , state: "California", country: "USA")
disney = anaheim.attractions.create(name: "Disneyland", description: "Happiest place on Earth")
jay = User.first
jason_disney = jay.trips.create(start_date: "2019-06-01", end_date: "2019-06-07", location_id: 1)
jason_disney.visits.create(attraction: disney, date: "2019-06-01")
jay.comments.create(content: "Fun for all", attraction: disney)
