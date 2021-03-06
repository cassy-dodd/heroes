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

adham = User.create!(
  first_name: "Adham",
  last_name: "Jaafar",
  email: "adham@gmail.com",
  password: "adham123"
  )
cassy = User.create!(
  first_name: "Cassy",
  last_name: "Dodd",
  email: "cassy@gmail.com",
  password: "cassy123"
  )
dorian = User.create!(
  first_name: "Dorian",
  last_name: "Wilson",
  email: "dw.debriano@gmail.com",
  password: "dorian123"
  )


edoardo = User.create!(
  first_name: "Edoardo",
  last_name: "Maraia",
  email: "edoardo@gmail.com",
  password: "edo123"
  )

hero_1 = Hero.new(
  title: "Annoy your neighbor",
  superpower: "Shameless",
  price: "20",
  description: "Call me and ill come freak your neighbours out for you",
  availability: DateTime.strptime("20/11/2020 17:00", "%d/%m/%Y %H:%M"),
  city: "Berlin",
  user: dorian,
)
hero_1.photo.attach(io: File.open('app/assets/images/annoy-your-neighbor.jpg'), filename: 'annoy-your-neighbor.jpg')
hero_1.save!

# review_1 = Review.new(
#   rating: 4,
#   content: "My neighbour was scared as hell! Will book again!",
#   hero_id: Hero.first[:id],
#   user_id: User.first[:id],
# )
# review_1.save!


hero_2 = Hero.new(
  title: "Boys night out",
  superpower: "Be friends with your girlfriend",
  price: "50",
  description: "Ill take care of your girlfriend while you play and have fun with your bros",
  availability: DateTime.strptime("20/11/2020 17:00", "%d/%m/%Y %H:%M"),
  city: "France",
  user: dorian,
)
hero_2.photo.attach(io: File.open('app/assets/images/be-friends-with-gf.jpg'), filename: 'be-friends-with-gf.jpg')
hero_2.save!

# review_2 = Review.new(
#   rating: 4,
#   content: "My neighbour was scared as hell! Will book again!",
#   hero_id: Hero.first[:id],
#   user_id: User.first[:id],
# )
# review_1.save!

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
  city: "England",
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
  title: "Look good for your next date",
  superpower: "Sloppy eater",
  price: "30",
  description: "Next to me, any woman will seem beautiful",
  availability: DateTime.strptime("20/11/2020 17:00", "%d/%m/%Y %H:%M"),
  city: "Berlin",
  user: dorian,

)
hero_6.photo.attach(io: File.open('app/assets/images/look-good.jpg'), filename: 'look-good.jpg')
hero_6.save!

hero_7 = Hero.new(
  title: "Tasty crabs night!",
  superpower: "Best crab cook",
  price: "50",
  description: "This will be the best crabs you'll ever have in your life.",
  availability: DateTime.strptime("20/11/2020 17:00", "%d/%m/%Y %H:%M"),
  city: "Berlin",
  user: dorian,

)
hero_7.photo.attach(io: File.open('app/assets/images/crabs.jpg'), filename: 'crabs.jpg')
hero_7.save!

hero_8 = Hero.new(
  title: "Piss off your neighbor!",
  superpower: "Always poop-ready.",
  price: "100",
  description: "Will poop in your neighbours letterbox.",
  availability: DateTime.strptime("20/11/2020 17:00", "%d/%m/%Y %H:%M"),
  city: "Berlin",
  user: dorian,

)
hero_8.photo.attach(io: File.open('app/assets/images/poopbox.jpg'), filename: 'poopbox.jpg')
hero_8.save!

hero_9 = Hero.new(
  title: "Driverman!",
  superpower: "Amazing driver",
  price: "40",
  description: "Will drive you and your friends home after a big night out",
  availability: DateTime.strptime("20/11/2020 17:00", "%d/%m/%Y %H:%M"),
  city: "Berlin",
  user: dorian,

)
hero_9.photo.attach(io: File.open('app/assets/images/driver.jpg'), filename: 'driver.jpg')
hero_9.save!

hero_10 = Hero.new(
  title: "Punch the bully",
  superpower: "Punching bullies!",
  price: "20",
  description: "Will punch the bully that has been bothering you at school",
  availability: DateTime.strptime("20/11/2020 17:00", "%d/%m/%Y %H:%M"),
  city: "Madrid",
  user: dorian,

)
hero_10.photo.attach(io: File.open('app/assets/images/punchthebully.jpg'), filename: 'punchthebully.jpg')
hero_10.save!

hero_11 = Hero.new(
  title: "Light up your party!",
  superpower: "Be super funny at parties",
  price: "20",
  description: "Will be super fun to be around and make everyone have a good time.",
  availability: DateTime.strptime("20/11/2020 17:00", "%d/%m/%Y %H:%M"),
  city: "London",
  user: dorian,

)
hero_11.photo.attach(io: File.open('app/assets/images/funnyguy.jpg'), filename: 'funnyguy.jpg')
hero_11.save!
