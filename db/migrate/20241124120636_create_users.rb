class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :user_name, null: false
      t.string :email, null: false, unique: true
      t.string :encrypted_password, null: false
      t.string :user_sex, null: false
      t.string :favorite_game
      t.string :favorite_unit
      t.string :favorite_weapon

      t.timestamps
    end
  end
end
