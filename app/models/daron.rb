class Daron < ApplicationRecord
  has_many :bookings

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: true
  validates :bio, presence: true

end
