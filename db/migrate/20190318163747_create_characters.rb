class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :lvl
      t.string :class_type

      t.timestamps
    end
  end
end
