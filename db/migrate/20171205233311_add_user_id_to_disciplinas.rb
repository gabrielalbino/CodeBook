class AddUserIdToDisciplinas < ActiveRecord::Migration[5.1]
  def change
    add_column :disciplinas, :user_id, :integer
  end
end
