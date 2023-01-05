# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create([{ admin: true, first_name: "Miguel", last_name: "Ignazio", email: "mx@email.com", phone: "09760507982", password: "bab"}, { admin: false, first_name: "Jon", last_name: "Doe", email: "jon@email.com", phone: "09275231825", password: "doe"} ])