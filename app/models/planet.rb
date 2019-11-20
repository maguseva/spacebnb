class Planet < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_many :reviews, through: :bookings
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  validates :capacity, presence: true
  # todo check if we handle empty photo
end
