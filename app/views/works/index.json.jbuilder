json.array!(@works) do |work|
  json.extract! work, :id, :name, :objetive, :descripcion, :fecha_inicio, :fecha_fin, :report_id
  json.url work_url(work, format: :json)
end
