class Movie < ApplicationRecord
    has_many :bookings
    has_many :showings
end
