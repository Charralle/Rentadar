# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
User.destroy_all
Daron.destroy_all
Booking.destroy_all

require 'faker'
AUTHORIZED_CATEGORIES = ["Rangement", "Compta", "Magie", "Patisserie", "Representation", "Eloquence", "Soutient Scolaire", "Tourisme", "Militantisme", "Cuisine", "Mécano", "Libertinage", "Borderline", "Culture", "Bricolo", "Sportif", "Jedi", "Esthétique", "Couture", "Gaming", "Soutient émotionnel", "Sorcellerie", "Transport"]
# Examples:
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
first_user = User.create!(
  email: 'toto@toto.com',
  password: 'azerty'
)

  Daron.create!(
    name: 'Clown',
    profile_picture: 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Pennywise_Cosplay_3.jpg/800px-Pennywise_Cosplay_3.jpg',
    price: '23',
    bio: 'gentil',
    badges: 'Rangement',
    zip_code: '77000',
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    user: first_user
    )

puts "new Pas Zeubi"


#à partir d'ici on répète, dès que l'user est connectée par le mail et le mdp il pourra créer qu'un seul daton
first_user = User.create!(
  email: Faker::Internet.email,
  password: 'azerty'
)

  Daron.create!(
    name: 'A seed',
    profile_picture: 'https://www.bdxc.fr/images/_bdxc/1620653759_1667160386/1620653759_1667160386_screencity_full.jpg',
    price: '23',
    bio: 'gentil',
    badges: 'Rangement',
    zip_code: '77000',
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    user: first_user
    )

    Daron.create!(
      name: 'Akram',
      profile_picture: 'https://www.turbo.fr/sites/default/files/styles/article_690x405/public/2019-09/interview-akram-junior_1.png.webp?itok=3w2vxvsE',
      price: '34',
      bio: 'Pilote, Investisseur, Collectionneur',
      badges: 'Eloquence',
      zip_code: '92400',
      phone_number: Faker::PhoneNumber.cell_phone_in_e164,
      user: first_user
      )
