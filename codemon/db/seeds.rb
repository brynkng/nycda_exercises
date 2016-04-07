# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
Pokemon.create(name: "squirtle", style: "water", description: "A water based turtle pokemon who prefers to live in groups. Suspected mafia member of the Squirtle Squad.")
Pokemon.create(name: 'bulbasaur', style: "grass", description: "The bulb that is on its back absorbs sunlight. The least loved pokemon except by cool trainers.")
Pokemon.create(name: 'charmander', style: "fire", description: "If the flame on its tail goes out it dies. Then returns as a zombie brokemon.")
Hero.create(username: 'gary', hp: 100, level: 1, xp: 0, password: "password", password_confirmation: "password", game_floor: 0, pokemon_id: 3)
Opponent.create(hp: 50, pokemon_id: 1, level: 1)

