json.array!(@comments) do |comment|
  json.extract! comment, :title, :comment
  json.url comment_url(comment, format: :json)
end
