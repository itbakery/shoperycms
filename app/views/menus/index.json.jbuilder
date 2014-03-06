json.array!(@menus) do |menu|
  json.extract! menu, :id, :name_th, :name_en
  json.url menu_url(menu, format: :json)
end
