# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create planets

planets = ["Mars", "Venus", "Saturn"]
planets.each do |planet|
  Planet.create!(
    name: planet,
    price: rand(100..1000),
    capacity: rand(1..15),
    # travel_time: rand(86400..150000),
    description: Faker::Lorem.sentences(number: 10))
end

# create stars

20.times {
  Planet.create!(
    name: Faker::Space.star,
    price: rand(100..1000),
    capacity: rand(1..15),
    # travel_time: rand(86400..150000),
    description: Faker::Lorem.sentences(number: 10))
}
