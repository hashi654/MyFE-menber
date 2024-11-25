class CreateUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :units do |t|
      t.string :title, null:false
      t.string :unitname, null:false
      t.integer :lv, null:false
      t.integer :hp, null:false
      t.integer :power, null:false
      t.integer :magicpower, null:false
      t.integer :skill, null:false
      t.integer :speed, null:false
      t.integer :luck, null:false
      t.integer :defense, null:false
      t.integer :magicdefense, null:false
      t.integer :charm, null:false
      t.integer :move, null:false
      t.float :hp_grow, null:false
      t.float :power_grow, null:false
      t.float :magicpower_grow, null:false
      t.float :skill_grow, null:false
      t.float :speed_grow, null:false
      t.float :luck_grow, null:false
      t.float :defense_grow, null:false
      t.float :magicdefense_grow, null:false
      t.float :charm_grow, null:false
      t.float :move_grow, null:false

      t.timestamps
    end
  end
end
