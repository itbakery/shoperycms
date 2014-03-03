json.array!(@price_schemas) do |price_schema|
  json.extract! price_schema, :id, :quantity, :unit, :price
  json.url price_schema_url(price_schema, format: :json)
end
