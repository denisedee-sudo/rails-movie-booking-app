class Movie < ApplicationRecord
    has_many :showings
    has_many :bookings through: :showings
    has_many :cinemas through: :showings
end
