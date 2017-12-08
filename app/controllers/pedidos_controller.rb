class PedidosController < ApplicationController
  before_action :set_pedido, only: [:destroy]

  def create
    @pedido = Pedido.new(pedido_params)
  end

  def index
  end
  def show
  end

  def create
    @pedido = Pedido.new(pedido_params)

    respond_to do |format|

      if @pedido.save
        format.html { redirect_to users_path(search: User.find(@pedido.user_dest).username), notice: 'Pedido enviado com sucesso.' }
        format.json { render :show, status: :created, location: @pedido }
      else
        format.html { render :index }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @pedido.destroy
    respond_to do |format|
      format.html { redirect_to pedidos_path, notice: 'Notificação removida.' }
      format.json { head :no_content }
    end
  end

    private
      # Never trust parameters from the scary internet, only allow the white list through.
      def pedido_params
        params.require(:pedido).permit(:caderno_id, :user_dest, :user_orig)
      end
      def set_pedido
        @pedido = Pedido.find(params[:id])
      end

end
