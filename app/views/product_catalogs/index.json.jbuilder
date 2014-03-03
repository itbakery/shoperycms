json.array!(@product_catalogs) do |product_catalog|
  json.extract! product_catalog, :id, :name, :description, :released_on
  json.url product_catalog_url(product_catalog, format: :json)
end
