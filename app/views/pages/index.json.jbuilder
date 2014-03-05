json.array!(@pages) do |page|
  json.extract! page, :id, :name, :content, :published_on, :is_published, :approved_by
  json.url page_url(page, format: :json)
end
