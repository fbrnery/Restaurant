json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :name, :idade
  json.url cliente_url(cliente, format: :json)
end
