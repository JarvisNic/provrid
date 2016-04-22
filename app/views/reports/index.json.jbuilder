json.array!(@reports) do |report|
  json.extract! report, :id, :name, :date, :desc, :project_id
  json.url report_url(report, format: :json)
end
