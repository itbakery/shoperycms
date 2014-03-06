json.array!(@newsinfos) do |newsinfo|
  json.extract! newsinfo, :id, :name, :content, :published_on, :is_published, :approved_by
  json.url newsinfo_url(newsinfo, format: :json)
end
