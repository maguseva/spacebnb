class Planet < ApplicationRecord
  has_many :bookings
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  validates :capacity, presence: true
  # todo check if we handle empty photo
end
