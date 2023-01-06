class Cinema < ApplicationRecord
  has_many :movies through: :showings
  
end
