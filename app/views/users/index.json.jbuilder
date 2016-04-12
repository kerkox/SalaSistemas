json.array!(@users) do |user|
  json.extract! user, :id, :identificacion, :nombre, :apellidos, :tipo, :email, :password, :penalizaciones
  json.url user_url(user, format: :json)
end
