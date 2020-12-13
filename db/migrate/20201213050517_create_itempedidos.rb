class CreateItempedidos < ActiveRecord::Migration[6.1]
  def change
    create_table :itempedidos do |t|
      t.references :produto, null: false, foreign_key: true
      t.belongs_to :pedido, null: false, foreign_key: true

      t.timestamps
    end
  end
end
