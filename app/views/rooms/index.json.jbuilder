json.array!(@rooms) do |room|
  json.extract! room, :id, :nombre, :cantidad_total, :cantidad_disponible
  json.url room_url(room, format: :json)
end
