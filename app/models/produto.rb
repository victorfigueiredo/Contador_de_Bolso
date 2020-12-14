class Produto < ApplicationRecord
    has_many :itempedidos
    before_destroy :ensure_not_referenced_by_any_itempedido
    private
        def ensure_not_referenced_by_any_itempedido
            unless itempedido.empty?
                errors.add(:base, 'Item pedido presente')
                throw :abort
            end
        end
end
