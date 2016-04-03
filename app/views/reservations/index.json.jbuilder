json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :fecha_inicio, :fecha_final, :User_id, :Room_id, :Period_id
  json.url reservation_url(reservation, format: :json)
end
