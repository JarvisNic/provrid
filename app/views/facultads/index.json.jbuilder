json.array!(@facultads) do |facultad|
  json.extract! facultad, :id, :name
  json.url facultad_url(facultad, format: :json)
end
