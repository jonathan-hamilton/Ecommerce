json.extract! product, :id, :featured, :productName, :description, :price, :category_id, :type_id, :brand_id, :created_at, :updated_at
json.url product_url(product, format: :json)
