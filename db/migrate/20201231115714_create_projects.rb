class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :progress
      t.string :work_type
      t.string :cost
      t.string :assigned
      t.string :status
      t.references :client, foreign_key: :true

      t.timestamps
    end
  end
end
