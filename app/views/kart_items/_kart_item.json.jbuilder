json.extract! kart_item, :id, :quantity, :product_id, :created_at, :updated_at
json.url kart_item_url(kart_item, format: :json)
