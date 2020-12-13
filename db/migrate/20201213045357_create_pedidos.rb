class CreatePedidos < ActiveRecord::Migration[6.1]
  def change
    create_table :pedidos do |t|
      t.integer :pessoa
      t.string :sexo
      t.datetime :data

      t.timestamps
    end
  end
end
