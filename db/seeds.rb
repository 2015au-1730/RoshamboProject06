# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
List.create(description: "XXX", cost: 3.9, link:"https://www.google.com", category:"head")
List.create(description: "YYY", cost: 233, link:"https://www.google.com", category:"feet")
List.create(description: "YYY", cost: 1, link:"https://www.google.com", category:"feet")
