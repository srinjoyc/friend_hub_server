class AddUsertoPersonality < ActiveRecord::Migration[5.0]
  def change
    add_reference :personalities, :user, index: true 
  end
end
