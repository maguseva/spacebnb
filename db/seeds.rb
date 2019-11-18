# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning the db"
Planet.destroy_all if Rails.env.development?

# create planets
puts "Creating planets..."
planets = %w[Mahasim Proxima\ Centauri Rigil Kentaurus Luyten\ 726-8A Procyon\ A
Sun Sirius\ A Betelgeuse Ross\ 154 Vega Luyten\ 726-8B Procyon\ B
Wolf\ 359 Mars Venus Saturn]
planets.each do |planet|
  Planet.create!(
    name: planet,
    price: rand(100..1000),
    capacity: rand(1..15),
    # travel_time: rand(86400..150000),
    description: Faker::Lorem.sentences(number: 10))
end

puts "Done!"
