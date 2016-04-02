json.array!(@periods) do |period|
  json.extract! period, :id, :fecha_inicio, :fecha_finalizacion
  json.url period_url(period, format: :json)
end
