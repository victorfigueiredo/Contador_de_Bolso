class Itempedido < ApplicationRecord
  belongs_to :Produto
  belongs_to :Pedido
end
