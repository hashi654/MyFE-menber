class CreateUnitWeapons < ActiveRecord::Migration[6.0]
  def change
    create_table :unit_weapons do |t|
      t.string :weapon, null:false
      t.references :unit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
