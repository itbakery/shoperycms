json.array!(@product_plans) do |product_plan|
  json.extract! product_plan, :id, :month, :content
  json.url product_plan_url(product_plan, format: :json)
end
