json.array!(@users) do |user|
  json.extract! user, :pseudo, :first_name, :last_name, :email, :is_admin
  json.url user_url(user, format: :json)
end
