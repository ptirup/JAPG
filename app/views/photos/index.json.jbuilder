json.array!(@photos) do |photo|
  json.extract! photo, :name, :description, :path, :note, :tags, :shot_date
  json.url photo_url(photo, format: :json)
end
