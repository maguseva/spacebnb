class Planet < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_many :reviews, through: :bookings
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  validates :capacity, presence: true
  # todo check if we handle empty photo

  # add search
  include PgSearch::Model
  pg_search_scope :search_by_name,
  against: [ :name, :capacity],
  using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
  end
