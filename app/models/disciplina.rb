class Disciplina < ApplicationRecord
  belongs_to :user
  has_many :cadernos, dependent: :destroy
end
