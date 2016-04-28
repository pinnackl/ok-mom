json.array!(@users) do |user|
  json.extract! user, :id, :name, :username, :email, :password, :type, :createdAt
  json.url user_url(user, format: :json)
end
