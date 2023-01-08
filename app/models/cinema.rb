class Cinema < ApplicationRecord
  has_many :showings, dependent: :destroy
  has_many :movies, through: :showings
end
