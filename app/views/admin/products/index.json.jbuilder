json.array!(@products) do |product|
  json.extract! product, :id, :sku, :name, :description, :quantity, :released_on
  json.url product_url(product, format: :json)
end
