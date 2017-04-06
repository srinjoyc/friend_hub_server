class CreateHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :histories do |t|
      t.references :user, foreign_key: true
      t.references :hub, foreign_key: true

      t.boolean :is_active
      t.timestamps
    end
  end
end
