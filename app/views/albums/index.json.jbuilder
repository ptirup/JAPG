json.array!(@albums) do |album|
  json.extract! album, :name, :description
  json.url album_url(album, format: :json)
end
