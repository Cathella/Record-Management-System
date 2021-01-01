json.extract! invoice, :id, :bill_from_email, :bill_from_name, :bill_to_email, :bill_to_name, :item_ref, :item_type, :item_qty, :item_rate, :item_price, :discount, :tax, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
