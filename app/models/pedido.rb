class Pedido < ApplicationRecord
    has_many :itempedidos

    def add_produto(produto)
        itematual = itempedidos.find_by(produto_id: produto.id)
        if itematual
            itematual.quantidade += 1
        else
            itematual = itempedidos.build(produto_id: produto_id)
        end
        itematual
    end

    def total_preco
        itempedidos.to_a.sum { |item| item.total_price }
    end

    def total_items
        itempedidos.to_a.sum { |item| item.quantidade }
    end 
end
