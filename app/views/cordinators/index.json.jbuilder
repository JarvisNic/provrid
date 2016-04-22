json.array!(@cordinators) do |cordinator|
  json.extract! cordinator, :id, :name, :address, :phone
  json.url cordinator_url(cordinator, format: :json)
end
