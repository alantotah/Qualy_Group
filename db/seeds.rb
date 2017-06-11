# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'ffaker'
User.destroy_all

10.times do
  name = FFaker::NameMX.male_name
  appellido = FFaker::Name.last_name
  puesto = FFaker::Job.title
  email = FFaker::Internet.safe_email
  telefono = FFaker::PhoneNumberMX.phone_number
  password = "12341234"
  direccion = FFaker::Address.street_address
  nombre_empresa = FFaker::Company.name
  User.create!( nombre: name,
  email: email,
  telefono: telefono,
  password: password,
  password_confirmation: password,
  direccion: direccion,
  nombre_empresa: nombre_empresa,
  puesto: puesto)
end

if AdminUser.find_by(email: "admin@example.com")==nil
  AdminUser.create!(email:"admin@example.com", password: "password", password_confirmation: "password")
end
