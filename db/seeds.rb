# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


l1 = List.create(description: "Leg", image: "legs.jpg")
Item.create(description: "大保健1", image: "legs.jpg",link: "https://google.com", list_id: l1.id)
Item.create(description: "大保健2", image: "legs.jpg",link: "https://google.com", list_id: l1.id)
l2 = List.create(description: "Hand", image: "hands.jpg")
l3 = List.create(description: "Back", image: "back.jpg")