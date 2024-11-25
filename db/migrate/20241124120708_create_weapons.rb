class CreateWeapons < ActiveRecord::Migration[6.0]
  def change
    create_table :weapons do |t|
      t.integer :power, null:false
      t.integer :range, null:false
      t.string :type, null:false
      t.string :effect, null:false

      t.timestamps
    end
  end
end
