# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!({name:"Srinjoy", email:"srinjoycal@gmail.com", password:"123456", bio:"Hi!"})
Hub.create!({name: "Math Study Center", latitude: 49.262606, longitude:-123.145490, description: "Great place to hang out with other students working on math problems.", image_url: "http://www.bu.edu/sustainability/files/2009/12/after-bu-media-edit41-462x300.jpg"})
