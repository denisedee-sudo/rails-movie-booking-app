class Movie < ApplicationRecord
    has_many :showings, dependent: :destroy
    has_many :cinemas, through: :showings
end
