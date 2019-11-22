class Booking < ApplicationRecord
  belongs_to :planet
  belongs_to :user
  has_one :review, dependent: :destroy
  validates :status, presence: true, inclusion: { in: %w[pending confirmed] }
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :guests, presence: true
  validates :address, presence: true
end
