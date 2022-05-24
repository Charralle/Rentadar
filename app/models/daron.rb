class Daron < ApplicationRecord
  has_many :bookings
  has_one :user

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: true
  validates :bio, presence: true

end
