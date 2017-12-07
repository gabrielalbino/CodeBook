class Caderno < ApplicationRecord
	belongs_to :disciplina
	validates :titulo, presence: true, allow_blank: false
end
