# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Hero.destroy_all
User.destroy_all

dorian = User.create!(
  first_name: "Dorian",
  last_name: "Wilson",
  email: "dw.debriano@gmail.com",
  password: "dorian123"
  )

hero_1 = Hero.new(
  title: "Annoy your neighbor",
  superpower: "no shame",
  price: "20",
  description: "Call me and ill come freak your neighbours out for you",
  availability: DateTime.strptime("20/11/2020 17:00", "%d/%m/%Y %H:%M"),
  city: "Berlin",
  user: dorian,
)
hero_1.photo.attach(io: File.open('app/assets/images/annoy-your-neighbor.jpg'), filename: 'annoy-your-neighbor.jpg')
hero_1.save!

hero_2 = Hero.new(
  title: "Go with your bros",
  superpower: "Be friends with your girlfriend",
  price: "50",
  description: "Ill take care of your girlfriend while you play have fun with your bros",
  availability: DateTime.strptime("20/11/2020 17:00", "%d/%m/%Y %H:%M"),
  city: "Berlin",
  user: dorian,
)
hero_2.photo.attach(io: File.open('app/assets/images/be-friends-with-gf.jpg'), filename: 'be-friends-with-gf.jpg')
hero_2.save!

hero_3 = Hero.new(
  title: "no reminder at 8pm",
  superpower: "Flashcards",
  price: "20",
  description: "Ill take care of doing your Flashcards for you",
  availability: DateTime.strptime("20/11/2020 20:00", "%d/%m/%Y %H:%M"),
  city: "Berlin",
  user: dorian,
)
hero_3.photo.attach(io: File.open('app/assets/images/do-your-flashcards.jpg'), filename: 'do-your-flashcards.jpg')
hero_3.save!

hero_4 = Hero.new(
  title: "Best dad ever",
  superpower: "Pony giver",
  price: "800",
  description: "Finally buy your daughter a pony!",
  availability: DateTime.strptime("20/11/2020 17:00", "%d/%m/%Y %H:%M"),
  city: "Berlin",
  user: dorian,
)
hero_4.photo.attach(io: File.open('app/assets/images/give-your-daughter-a-pony.jpg'), filename: 'give-your-daughter-a-pony.jpg')
hero_4.save!

hero_5 = Hero.new(
  title: "Dont be alone on your next journey",
  superpower: "campervan driver",
  price: "50",
  description: "I will drive your caravan and light your fire (only the outdoor one)",
  availability: DateTime.strptime("20/11/2020 17:00", "%d/%m/%Y %H:%M"),
  city: "Berlin",
  user: dorian,
)
hero_5.photo.attach(io: File.open('app/assets/images/go-on-a-trip-with.jpg'), filename: 'go-on-a-trip-with.jpg')
hero_5.save!

hero_6 = Hero.new(
  title: "Dont be alone on your next journey",
  superpower: "campervan driver",
  price: "50",
  description: "I will drive your caravan and light your fire (only the outdoor one)",
  availability: DateTime.strptime("20/11/2020 17:00", "%d/%m/%Y %H:%M"),
  city: "Berlin",
  user: dorian,
)
hero_6.photo.attach(io: File.open('app/assets/images/look-good.jpg'), filename: 'look-good.jpg')
hero_6.save!
