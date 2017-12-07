class CadernosController < ApplicationController
  before_action :set_caderno, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /cadernos
  # GET /cadernos.json
  def index
    @cadernos = Caderno.all
    @disciplinas = Disciplina.all
  end

  # GET /cadernos/1
  # GET /cadernos/1.json
  def show
    @disciplinas = Disciplina.all
  end

  # GET /cadernos/new
  def new
    @caderno = Caderno.new
    @disciplinas = Disciplina.all
  end

  # GET /cadernos/1/edit
  def edit
    @disciplinas = Disciplina.all
  end

  # POST /cadernos
  # POST /cadernos.json
  def create
    @disciplinas = Disciplina.all
    @caderno = Caderno.new(caderno_params)

    respond_to do |format|

      if @caderno.save
        format.html { redirect_to @caderno, notice: 'Caderno foi criado com sucesso.' }
        format.json { render :show, status: :created, location: @caderno }
      else
        format.html { render :new }
        format.json { render json: @caderno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cadernos/1
  # PATCH/PUT /cadernos/1.json
  def update
    @disciplinas = Disciplina.all
    respond_to do |format|
      if @caderno.update(caderno_params)
        format.html { redirect_to @caderno, notice: 'Caderno atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @caderno }
      else
        format.html { render :edit }
        format.json { render json: @caderno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cadernos/1
  # DELETE /cadernos/1.json
  def destroy
    @caderno.destroy
    respond_to do |format|
      format.html { redirect_to cadernos_url, notice: 'Caderno foi excluido com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caderno
      @caderno = Caderno.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caderno_params
      params.require(:caderno).permit(:titulo, :conteudo)
    end
end
