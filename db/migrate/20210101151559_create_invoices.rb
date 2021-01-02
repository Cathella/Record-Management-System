class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.string :bill_from_email
      t.string :bill_from_name
      t.integer :item_qty
      t.integer :item_price
      t.string :discount
      t.string :notes
      t.string :tax
      t.references :project, foreign_key: :true

      t.timestamps
    end
  end
end
