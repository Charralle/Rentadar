class Booking < ApplicationRecord
  has_one :user
  has_one :daron

  validates :end_date, presence: true
  validates :price, presence: true, numericality: true
  validates :total_price, presence: true, numericality: true
  validates :location, presence: true


end
