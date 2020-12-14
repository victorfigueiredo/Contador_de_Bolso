json.extract! pedido, :id, :quantidade, :idade, :genero, :data, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
