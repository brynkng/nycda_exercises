# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(name:"Donald", email:"gold@gold.com", password:"password", password_confirmation:"password")
User.create(name:"Hillary", email:"server@clinton.com", password:"password", password_confirmation:"password")
Post.create(user_id: 1, message:"I have words.  I have the best words")
Post.create(user_id: 1, message:"My hands might be small, but I have no problem down there")
Post.create(user_id: 2, message:"What does it even matter anymore!")
Post.create(user_id: 2, message:"I always try to tell you the truth")
Admin.create(name:"Barack", email:"POTUS@usa.gov", password:"password", password_confirmation:"password")
