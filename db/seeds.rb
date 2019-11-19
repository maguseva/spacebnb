# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning the db"
Planet.destroy_all if Rails.env.development?

photos = ['https://images.unsplash.com/photo-1538291323976-37dcaafccb12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60',
'https://images.unsplash.com/photo-1537989036885-80b4d200958d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60',
'https://images.unsplash.com/photo-1523597020744-b68b1edd3e1c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60',
'https://images.unsplash.com/photo-1560507074-b9eb43faab00?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60',
'https://images.unsplash.com/photo-1545156521-77bd85671d30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60',
'https://images.unsplash.com/photo-1446941611757-91d2c3bd3d45?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60',
'https://images.unsplash.com/photo-1504192010706-dd7f569ee2be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60',
'https://images.unsplash.com/photo-1554668108-87d6864fdca2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60',
'https://images.unsplash.com/photo-1558470610-5cfea4b5c626?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60',
'https://images.unsplash.com/photo-1532737956080-dd5230538e5f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60',
'https://images.unsplash.com/photo-1562619384-0794acd12dfc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60',
'https://images.unsplash.com/photo-1501648060331-445082feb607?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60']

# create planets
puts "Creating planets..."
planets = %w[Mahasim Proxima\ Centauri Rigil Kentaurus Luyten\ 726-8A Procyon\ A Sirius\ A Betelgeuse Ross\ 154 Vega Luyten\ 726-8B Procyon\ B]
planets.each do |planet|
  Planet.create!(
    name: planet,
    price: rand(100..1000),
    capacity: rand(1..15),
    # travel_time: rand(86400..150000),
    description: Faker::Lorem.sentences(number: 10),
    photo: photos.sample)
end

puts "Done!"
