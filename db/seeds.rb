# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"


10.times do
  user = User.new(
    name: Faker::Sports::Football.player,
    address: Faker::Address.city,
    email: Faker::Internet.email,
    photo: Faker.image.imageUrl();
    description: Faker::Movies::VForVendetta.speech;
    offers: Faker::Commerce.department(max: 3)
    )

  user.save
