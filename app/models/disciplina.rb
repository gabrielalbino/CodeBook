class Disciplina < ApplicationRecord
  belongs_to :user
  has_many :cadernos, dependent: :destroy
  validates :nome, presence: true, allow_blank: false
end
