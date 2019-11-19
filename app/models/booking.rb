class Booking < ApplicationRecord
  belongs_to :planet
  belongs_to :user
  validates :status, presence: true, inclusion: { in: %w[pending confirmed cancelled] }
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :guests, presence: true
end
