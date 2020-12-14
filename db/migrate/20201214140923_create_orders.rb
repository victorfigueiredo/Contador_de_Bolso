class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :qpessoa
      t.string :genero
      t.integer :idade
      t.datetime :data

      t.timestamps
    end
  end
end
