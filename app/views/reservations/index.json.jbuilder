json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :fecha, :hora_inicio, :hora_finalizacion, :User_id, :Room_id, :Period_id
  json.url reservation_url(reservation, format: :json)
end
