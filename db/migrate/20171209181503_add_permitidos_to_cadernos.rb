class AddPermitidosToCadernos < ActiveRecord::Migration[5.1]
  def self.up
    create_table :cadernos_users do |t|
      t.references :caderno, :user	
    end
  end

  def self.down
    drop_table :cadernos_usuarios
  end
end