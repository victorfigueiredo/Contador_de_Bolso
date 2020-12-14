class AddQuantidadeToItempedidos < ActiveRecord::Migration[6.1]
  def change
    add_column :itempedidos, :quantidade, :integer, default: 1
  end
end
