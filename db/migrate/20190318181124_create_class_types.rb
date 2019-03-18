class CreateClassTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :class_types do |t|
      t.string :class_type

      t.timestamps
    end
  end
end
