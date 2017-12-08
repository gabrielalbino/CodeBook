class CreatePedidos < ActiveRecord::Migration[5.1]
  def change
    create_table :pedidos do |t|
      t.integer :caderno_id
      t.integer :user_dest
      t.integer :user_orig

      t.timestamps
    end
  end
end
