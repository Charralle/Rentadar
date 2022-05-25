class Daron < ApplicationRecord
  AUTHORIZED_CATEGORIES = ["Rangement", "Compta", "Magie", "Patisserie", "Representation", "Eloquence", "Soutient Scolaire", "Tourisme", "Militantisme", "Cuisine", "Mécano", "Libertinage", "Borderline", "Culture", "Bricolo", "Sportif", "Jedi", "Esthétique", "Couture", "Gaming", "Soutient émotionnel", "Sorcellerie", "Transport"]
  validates :badges, inclusion: { in: AUTHORIZED_CATEGORIES }
  has_many :bookings
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: true
  validates :bio, presence: true
  validates :zip_code, presence: true
  validates :phone_number, presence: true
  validates :profile_picture, presence: true
end
