class CreateUnitSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :unit_skills do |t|
      t.string :skill, null:false
      t.references :unit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
