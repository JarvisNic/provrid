json.array!(@projects) do |project|
  json.extract! project, :id, :name, :objetive, :responsable, :time, :status, :fase
  json.url project_url(project, format: :json)
end
