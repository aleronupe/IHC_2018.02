json.extract! product, :id, :name, :price, :description, :star_comfort, :star_siteUsage, :star_delivery, :star_attendance, :star_size, :star_quality, :star_resolution, :image, :Category_id, :created_at, :updated_at
json.url product_url(product, format: :json)
