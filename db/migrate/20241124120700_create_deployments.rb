class CreateDeployments < ActiveRecord::Migration[6.0]
  def change
    create_table :deployments do |t|
      t.string :title, null: false
      t.string :chapter, null: false
      t.boolean :visible, null: false
      t.integer :view, null: false, default: 0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
