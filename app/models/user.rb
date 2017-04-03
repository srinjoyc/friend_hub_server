class User < ApplicationRecord
  has_one :personality
  has_many :posts
#User.create!({name:"Srinjoy", email:"srinjoycal@gmail.com", password:"123456", bio:"Hi!"})




end
