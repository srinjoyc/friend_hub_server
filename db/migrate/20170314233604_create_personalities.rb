class CreatePersonalities < ActiveRecord::Migration[5.0]
  def change
    create_table :personalities do |t|
      t.decimal :attr_a
      t.decimal :attr_b
      t.decimal :attr_c
      t.decimal :attr_d
      t.decimal :attr_e

      t.timestamps
    end
  end
end
