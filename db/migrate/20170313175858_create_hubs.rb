class CreateHubs < ActiveRecord::Migration[5.0]
  def change
    create_table :hubs do |t|
      t.string :name
      t.decimal :latitude
      t.decimal :longitude
      t.string :description
      t.string :location
      t.string :image_url
      t.string :type

      t.timestamps
    end
  end
end
