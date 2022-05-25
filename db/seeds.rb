# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
p "Zbi?"
require 'faker'
AUTHORIZED_CATEGORIES = ["Rangement", "Compta", "Magie", "Patisserie", "Representation", "Eloquence", "Soutient Scolaire", "Tourisme", "Militantisme", "Cuisine", "Mécano", "Libertinage", "Borderline", "Culture", "Bricolo", "Sportif", "Jedi", "Esthétique", "Couture", "Gaming", "Soutient émotionnel", "Sorcellerie", "Transport"]
# Examples:
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
50.times do
  Daron.create(
    name: Faker::Name.first_name,
    profile_picture: Faker::LoremFlickr.image(size: "240x240", search_terms: ['person']),
    price: rand(0..1000).to_s,
    bio: Faker::Lorem.sentence(word_count: 15),
    badges: AUTHORIZED_CATEGORIES.sample,
    zip_code: Faker::Address.zip,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    )
end

puts "Pas Zeubi"
