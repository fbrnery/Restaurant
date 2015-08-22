json.array!(@restaurantes) do |restaurante|
  json.extract! restaurante, :id, :name, :endereco, :especialidade
  json.url restaurante_url(restaurante, format: :json)
end
