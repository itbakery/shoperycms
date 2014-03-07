json.array!(@articles) do |article|
  json.extract! article, :id, :name, :content, :published_on, :is_published, :approved_by
  json.url article_url(article, format: :json)
end
