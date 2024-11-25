class CreateSupports < ActiveRecord::Migration[6.0]
  def change
    create_table :supports do |t|
      t.string :unit1, null:false
      t.string :unit2, null:false
      t.string :support_level, null:false
      t.string :support_effect, null:false

      t.timestamps
    end
  end
end
