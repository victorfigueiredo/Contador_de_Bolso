class Itempedido < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :produto
  belongs_to :pedido, optional: true

  def total_preco
    produto.preco * quantidade
  end
end
