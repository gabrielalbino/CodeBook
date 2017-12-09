class Caderno < ApplicationRecord
	belongs_to :disciplina
	has_and_belongs_to_many :user
	validates :titulo, presence: true, allow_blank: false
	serialize :permitidos_id, Array
end
