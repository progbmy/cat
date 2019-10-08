json.extract! product, :id, :manufacturer, :name, :vendor_code, :weight, :price, :minimal_amount, :title, :h1, :key_words, :description, :created_at, :updated_at
json.url product_url(product, format: :json)
