class CreateClassUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :class_users do |t|
      t.integer :class_type_id
      t.integer :user_id

      t.timestamps
    end
  end
end
