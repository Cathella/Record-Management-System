class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.string :bill_from_email
      t.string :bill_from_name
      t.string :bill_to_email
      t.string :bill_to_name
      t.string :item_ref
      t.string :item_type
      t.integer :item_qty
      t.integer :item_rate
      t.integer :item_price
      t.string :discount
      t.string :tax

      t.timestamps
    end
  end
end
