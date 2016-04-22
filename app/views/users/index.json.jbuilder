json.array!(@users) do |user|
  json.extract! user, :id, :name, :lastname, :email, :address, :phone, :typeuser
  json.url user_url(user, format: :json)
end
