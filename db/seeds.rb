# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!({name:"Srinjoy", email:"srinjoycal@gmail.com", password:"123456", bio:"Hi! I'm in computer Engineering."})
User.create!({name:"John", email:"srinjoycal2@gmail.com", password:"123456", bio:"Hi! I'm working on stuyding today."})
User.create!({name:"Alex", email:"srinjoycal3@gmail.com", password:"123456", bio:"Hi! I'm looking to socialize!"})

Hub.create!({name: "Math Study Center", latitude: 49.262606, longitude:-123.145490, description: "Great place to hang out with other students working on math problems.", image_url: "http://www.bu.edu/sustainability/files/2009/12/after-bu-media-edit41-462x300.jpg"})
Hub.create!({name: "Math Study Center2", latitude: 49.272606, longitude:-123.145490, description: "Great place to hang out with other students working on math problems.", image_url: "http://www.bu.edu/sustainability/files/2009/12/after-bu-media-edit41-462x300.jpg"})
Hub.create!({name: "Math Study Center3", latitude: 49.282606, longitude:-123.145490, description: "Great place to hang out with other students working on math problems.", image_url: "http://www.bu.edu/sustainability/files/2009/12/after-bu-media-edit41-462x300.jpg"})

Personality.create({user_id: 1, attr_a: 1.1, attr_b: 1.2, attr_c: 1.3, attr_d: 1.4, attr_e: 1.5})
Personality.create({user_id: 2, attr_a: 1.0, attr_b: 1.4, attr_c: 1.5, attr_d: 1.2, attr_e: 1.3})