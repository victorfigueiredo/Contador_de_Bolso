json.extract! pedido, :id, :pessoa, :sexo, :data, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
