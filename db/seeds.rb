# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning DB"
Sportif.destroy_all
User.destroy_all

puts "Creating users..."
agence = User.create!(
  name: Faker::Name.unique.name,
  email: 'agence@exemple.com',
  password: 'password',
  address: Faker::Address.full_address
)

locataire = User.create!(
  name: Faker::Name.unique.name,
  email: 'locataire@exemple.com',
  password: 'password',
  address: Faker::Address.full_address,
)

puts "Creating sportifs"
3.times do
  Sportif.create!(
    name: Faker::Name.unique.name,
    address: "Lyon, France",
    description: '"Partage une régate à mes côtés et vis une experience hors du commun"',
    offers: 'Pack Immersion',
    price: rand(100..200),
    photo: File.open(Rails.root.join('db/fixtures/images/francois_dhaen.jpeg')),
    user: agence
  )
end

2.times do
  Sportif.create!(
    name: Faker::Name.unique.name,
    address: "Londres, Angleterre",
    description: '"Partage une régate à mes côtés et vis une experience hors du commun"',
    offers: 'Pack Immersion',
    price: rand(100..200),
    photo: File.open(Rails.root.join('db/fixtures/images/francois_gabart.jpg')),
    user: agence
  )
end

3.times do
  Sportif.create!(
    name: Faker::Name.unique.name,
    address: "Milan, Italie",
    description: '"Partage une régate à mes côtés et vis une experience hors du commun"',
    offers: 'Pack Immersion',
    price: rand(100..200),
    photo: File.open(Rails.root.join('db/fixtures/images/kelly_slater.jpg')),
    user: agence
  )
end

puts "Done"
