# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'ffaker'
User.all.destroy

10.times do
  name = FFaker::Name.name
  email = FFaker::Internet.email
  telefono = FFaker::PhoneNumber.phone_number
  password = FFaker::Internen.password
  User.create!( nombre: name,
  email: email,
  telefono: telefono,
  password: password,
  password_confirmation: password)
end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
