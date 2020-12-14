class AddOrderToItempedido < ActiveRecord::Migration[6.1]
  def change
    add_reference :itempedidos, :order, null: true, foreign_key: true
    change_column :itempedidos, :pedido_id, :integer, null: true
  end
end
