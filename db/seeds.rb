# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning the db"
Planet.destroy_all if Rails.env.development?

Planet.create!(
  name: 'Mahasim',
  price: 485,
  capacity: 3,
  description: 'Theta Aurigae (θ Aurigae, abbreviated Theta Aur, θ Aur) is a binary star in the constellation of Auriga. Based upon parallax measurements, the distance to this system is about 166 light-years (51 parsecs). The two components are designated Theta Aurigae A (also named Mahasim) and B.',
  address: 'San Juan Teotihuacan de Arista, Mexico',
  photo: 'https://images.unsplash.com/photo-1538291323976-37dcaafccb12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60'
  )

Planet.create!(
  name: 'Proxima Centauri',
  price: 996,
  capacity: 7,
  description: 'Proxima Centauri is a small, low-mass star located 4.244 light-years (1.301 pc) away from the Sun in the southern constellation of Centaurus. Its Latin name means the "nearest [star] of Centaurus". This object was discovered in 1915 by Robert Innes and is the nearest-known star to the Sun.',
  address: 'Al-Dschiza',
  photo: 'https://images.unsplash.com/photo-1523597020744-b68b1edd3e1c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60'
  )

Planet.create!(
  name: 'Rigil',
  price: 572,
  capacity: 13,
  description: 'Alpha Centauri (Latinized from α Centauri, abbreviated Alpha Cen or α Cen) is the closest star system and closest planetary system to the Solar System at 4.37 light-years (1.34 parsec) from the Sun.It is a triple star system, consisting of three stars: α Centauri A (officially Rigil Kentaurus), α Centauri B (officially Toliman),[15] and α Centauri C (officially Proxima Centauri).',
  address: 'Tempelhof',
  photo: 'https://images.unsplash.com/photo-1537989036885-80b4d200958d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60'
  )

Planet.create!(
  name: 'Kentaurus',
  price: 764,
  capacity: 5,
  description: 'Centaurus /sɛnˈtɔːrəs/ is a bright constellation in the southern sky. One of the largest constellations, Centaurus was included among the 48 constellations listed by the 2nd-century astronomer Ptolemy, and it remains one of the 88 modern constellations.',
  address: 'San Juan Teotihuacan de Arista, Mexico',
  photo: 'https://images.unsplash.com/photo-1560507074-b9eb43faab00?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60'
  )

Planet.create!(
  name: 'Luyten 726-8A',
  price: 359,
  capacity: 2,
  description: 'Luyten 726-8, also known as Gliese 65, is a binary star system that is one of Earths nearest neighbors, at about 8.7 light years from Earth in the constellation Cetus. Luyten 726-8B is also known under the variable star designation UV Ceti, being the archetype for the class of flare stars.',
  address: 'San Juan Teotihuacan de Arista, Mexico',
  photo: 'https://images.unsplash.com/photo-1545156521-77bd85671d30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60'
  )

Planet.create!(
  name: 'Procyon A',
  price: 388,
  capacity: 11,
  description: 'Procyon /ˈproʊsiɒn/ is the brightest object in the constellation of Canis Minor and usually the eighth-brightest star in the night sky with a visual apparent magnitude of 0.34. It has the Bayer designation α Canis Minoris, which is Latinised to Alpha Canis Minoris, and abbreviated α CMi or Alpha CMi, respectively.',
  address: 'Al-Dschiza',
  photo: 'https://images.unsplash.com/photo-1446941611757-91d2c3bd3d45?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60'
  )

Planet.create!(
  name: 'Sirius A',
  price: 362,
  capacity: 15,
  description: 'Sirius (/ˈsɪriəs/, designated α Canis Majoris (Latinized to Alpha Canis Majoris, abbreviated Alpha CMa, α CMa)) is the brightest star in the night sky. Its name is derived from the Greek word Σείριος Seirios "glowing" or "scorching". With a visual apparent magnitude of −1.46, Sirius is almost twice as bright as Canopus, the next brightest star.',
  address: 'Tempelhof',
  photo: 'https://images.unsplash.com/photo-1504192010706-dd7f569ee2be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60'
  )

Planet.create!(
  name: 'Betelgeuse',
  price: 714,
  capacity: 6,
  description: 'Betelgeuse is generally the ninth-brightest star in the night sky and second-brightest in the constellation of Orion (after Rigel). It is a distinctly reddish, semiregular variable star whose apparent magnitude varies between +0.0 and +1.3, the widest range of any first-magnitude star.',
  address: 'Al-Dschiza',
  photo: 'https://images.unsplash.com/photo-1554668108-87d6864fdca2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60'
  )

Planet.create!(
  name: 'Ross 154',
  price: 111,
  capacity: 9,
  description: 'Ross 154 (V1216 Sgr) is a star in the southern zodiac constellation of Sagittarius. It has an apparent visual magnitude of 10.44, making it much too faint to be seen with the naked eye. At a minimum, viewing Ross 154 requires a telescope with an aperture of 6.5 cm (3 in) under ideal conditions.',
  address: 'San Juan Teotihuacan de Arista, Mexico',
  photo: 'https://images.unsplash.com/photo-1558470610-5cfea4b5c626?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60'
  )
