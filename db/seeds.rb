# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Doctor.destroy_all
Patient.destroy_all
City.destroy_all
Appointment.destroy_all

100.times do |i|
    i = 0
    c = City.create(name: Faker::Address.city)
    d = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: ["Anesthesiology","Dermatology","Diagnostic radiology","Emergency medicine","Family medicine","Internal medicine", "Medical genetics"].sample ,zip_code: Faker::Address.zip_code)
    d.city = c
    p = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
    p.city = c
    a = Appointment.new
    a.doctor = d
    a.patient = p
    a.city = c
    a.date = Faker::Date.between(from: 20.days.ago, to: Date.today)
    a.save
    i += 1
   end