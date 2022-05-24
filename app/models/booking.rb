class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :daron

  validates :end_date, presence: true
  validates :price, presence: true, numericality: true
  validates :total_price, presence: true, numericality: true
  validates :location, presence: true
end
