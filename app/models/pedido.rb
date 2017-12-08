class Pedido < ApplicationRecord
    validates_uniqueness_of :user_orig, scope: [:user_dest, :caderno_id]
  end
