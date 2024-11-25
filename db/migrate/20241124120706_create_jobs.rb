class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :move, null:false
      t.string :ability, null:false
      t.string :lank, null:false

      t.timestamps
    end
  end
end
