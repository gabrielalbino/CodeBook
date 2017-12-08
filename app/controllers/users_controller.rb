class UsersController < ApplicationController
	def index
		@disciplinas = Disciplina.all
		@cadernos = Caderno.all
		@username = params[:search].downcase
		@usuario = User.all
		@contadorDisciplinas = 0
		@contadorCadernos = 0
		@usuario_existe = false
		@pedido = Pedido.new()
	end




end
