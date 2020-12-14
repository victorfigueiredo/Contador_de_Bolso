class Pedido < ApplicationRecord
    has_many :itempedidos, dependent: :destroy
end
