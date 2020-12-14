class Order < ApplicationRecord
    has_many: :itempedidos, dependent: :destroy

    validates :qpessoa, :genero, :idade, presence: true

    def add_itempedido_from_pedido(pedido)
        pedido.item_pedido.each do |item|
            item.pedido_id = nil
            itempedidos << item
    end
end
