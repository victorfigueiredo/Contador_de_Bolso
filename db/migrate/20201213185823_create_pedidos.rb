class CreatePedidos < ActiveRecord::Migration[6.1]
  def change
    create_table :pedidos do |t|
      t.integer :quantidade
      t.integer :idade
      t.string :genero
      t.datetime :data

      t.timestamps
    end
  end
end
