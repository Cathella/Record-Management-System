json.extract! client, :id, :name, :phone, :location, :payment, :created_at, :updated_at
json.url client_url(client, format: :json)
