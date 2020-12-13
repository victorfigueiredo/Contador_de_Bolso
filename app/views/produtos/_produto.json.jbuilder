json.extract! produto, :id, :titulo, :descricao, :extensao, :preco, :created_at, :updated_at
json.url produto_url(produto, format: :json)
