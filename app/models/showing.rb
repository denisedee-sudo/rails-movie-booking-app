class Showing < ApplicationRecord
  belongs_to :cinema
  belongs_to :movie
  has_many :bookings, dependent: :destroy
end
