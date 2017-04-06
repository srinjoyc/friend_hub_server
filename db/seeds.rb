require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!({name: "Srinjoy Chakraborty", email:"srinjoycal@gmail.com", password:"123456", bio:"Hi! I'm in computer Engineering."})
User.create!({name:Faker::Name.name, email: Faker::Internet.email , password:"123456", bio:"Hi! I'm working on stuyding today."})
User.create!({name:Faker::Name.name, email:Faker::Internet.email, password:"123456", bio:"Hi! I'm looking to socialize!"})
User.create!({name:Faker::Name.name, email:Faker::Internet.email, password:"123456", bio:"Hi! I'm looking to socialize!"})
User.create!({name:Faker::Name.name, email:Faker::Internet.email, password:"123456", bio:"Hi! I'm looking to socialize!"})
User.create!({name:Faker::Name.name, email:Faker::Internet.email, password:"123456", bio:"Hi! I'm looking to socialize!"})


Hub.create!({name: Faker::Company.name , latitude: 49.262606, longitude:-123.145490, description: "Great place to hang out with other students working on math problems.", image_url: Faker::Avatar.image("my-own-slug", "300x300", "bmp", "set1", "bg1"), address: Faker::Address.street_address})
Hub.create!({name: Faker::Company.name , latitude: 49.272606, longitude:-123.145490, description: "Great place to hang out with other students working on math problems.", image_url: Faker::Avatar.image("my-own-slug1", "300x300", "bmp", "set1", "bg1"), address: Faker::Address.street_address})
Hub.create!({name: Faker::Company.name , latitude: 49.281606, longitude:-123.145190, description: "Great place to hang out with other students working on math problems.", image_url: Faker::Avatar.image("my-own-slug2", "300x300", "bmp", "set1", "bg1"), address: Faker::Address.street_address})
Hub.create!({name: Faker::Company.name , latitude: 49.283606, longitude:-123.145190, description: "Great place to hang out with other students working on math problems.", image_url: Faker::Avatar.image("my-own-slug3", "300x300", "bmp", "set1", "bg1"), address: Faker::Address.street_address})
Hub.create!({name: Faker::Company.name , latitude: 49.282806, longitude:-123.145290, description: "Great place to hang out with other students working on math problems.", image_url: Faker::Avatar.image("my-own-slug4", "300x300", "bmp", "set1", "bg1"), address: Faker::Address.street_address})

Personality.create!({user_id: 1, attr_a: 1.1, attr_b: 1.2, attr_c: 1.3, attr_d: 1.4, attr_e: 1.5})
Personality.create!({user_id: 2, attr_a: 2.4, attr_b: 1.4, attr_c: 1.9, attr_d: 0.8, attr_e: 1.1})
Personality.create!({user_id: 3, attr_a: 2.0, attr_b: 1.3, attr_c: 2.0, attr_d: 1.2, attr_e: 1.9})
Personality.create!({user_id: 4, attr_a: 1.5, attr_b: 1.6, attr_c: 3.5, attr_d: 1.2, attr_e: 2.3})
Personality.create!({user_id: 5, attr_a: 1.9, attr_b: 1.9, attr_c: 2.5, attr_d: 1.2, attr_e: 1.6})

Post.create!({user_id: 1, content: Faker::Company.bs, hub_id: 1})
Post.create!({user_id: 2, content: Faker::Company.bs, hub_id: 1})
Post.create!({user_id: 3, content: Faker::Company.bs, hub_id: 1})
Post.create!({user_id: 4, content: Faker::Company.bs, hub_id: 1})
Post.create!({user_id: 1, content: Faker::Company.bs, hub_id: 2})
Post.create!({user_id: 1, content: Faker::Company.bs, hub_id: 2})
Post.create!({user_id: 1, content: Faker::Company.bs, hub_id: 3})
Post.create!({user_id: 1, content: Faker::Company.bs, hub_id: 3})
Post.create!({user_id: 1, content: Faker::Company.bs, hub_id: 3})


History.create!({user_id: 1, hub_id: 1, is_active: true})
History.create!({user_id: 2, hub_id: 1, is_active: true})
History.create!({user_id: 3, hub_id: 1, is_active: false})
History.create!({user_id: 1, hub_id: 2, is_active: false})
History.create!({user_id: 2, hub_id: 2, is_active: true})
History.create!({user_id: 3, hub_id: 2, is_active: false})
History.create!({user_id: 1, hub_id: 3, is_active: false})
History.create!({user_id: 2, hub_id: 3, is_active: true})
History.create!({user_id: 3, hub_id: 3, is_active: false})
History.create!({user_id: 1, hub_id: 4, is_active: true})
History.create!({user_id: 2, hub_id: 4, is_active: true})
History.create!({user_id: 3, hub_id: 4, is_active: true})
