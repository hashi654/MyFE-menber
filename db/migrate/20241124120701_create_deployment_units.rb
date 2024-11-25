class CreateDeploymentUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :deployment_units do |t|
      t.string :unitname, null: false
      t.integer :lv, null: false
      t.integer :hp, null: false
      t.integer :power, null: false
      t.integer :magicpower, null: false
      t.integer :skill, null: false
      t.integer :speed, null: false
      t.integer :luck, null: false
      t.integer :defense, null: false
      t.integer :magicdefense, null: false
      t.integer :charm, null: false
      t.integer :move, null: false
      t.references :deployment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
