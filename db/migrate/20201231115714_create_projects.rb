class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :ref_id
      t.string :description
      t.string :site_measurement
      t.string :progress
      t.string :work_type
      t.string :cost
      t.string :assigned
      t.references :client, foreign_key: :true

      t.timestamps
    end
  end
end
