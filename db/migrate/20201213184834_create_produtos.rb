class CreateProdutos < ActiveRecord::Migration[6.1]
  def change
    create_table :produtos do |t|
      t.string :titulo
      t.text :descricao
      t.decimal :preco

      t.timestamps
    end
  end
end
