class CreateUnitJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :unit_jobs do |t|
      t.string :job, null:false
      t.references :unit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
