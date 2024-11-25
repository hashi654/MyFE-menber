class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.string :condition, null:false
      t.string :effect, null:false

      t.timestamps
    end
  end
end
