# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create([{ admin: true, first_name: "Miguel", last_name: "Ignazio", email: "mx@email.com", phone: "09760507982", password: "bab"}, { admin: false, first_name: "Jon", last_name: "Doe", email: "jon@email.com", phone: "09275231825", password: "doe"} ])
Movie.create([{title: "Prestige", year: 2012},{title: "Avengers: Endgame", year: 2019}])
Cinema.create([{seats: 10 },{seats: 10 }])
# Showing.create([{cinema_id: 1, movie_id: 2, show_time: 2023-01-28 10:30:00},{cinema_id: 2, movie_id: 1, show_time: 2023-01-29 15:30:00}])
# Booking.create([{user_id: 1,showing_id: 1,cinema_id: 1}, {user_id: 2,showing_id: 2,cinema_id: 2}])