class CadernosController < ApplicationController
  before_action :set_caderno, only: [:show, :edit, :update, :destroy]

  # GET /cadernos
  # GET /cadernos.json
  def index
    @cadernos = Caderno.all
  end

  # GET /cadernos/1
  # GET /cadernos/1.json
  def show
  end

  # GET /cadernos/new
  def new
    @caderno = Caderno.new
  end

  # GET /cadernos/1/edit
  def edit
  end

  # POST /cadernos
  # POST /cadernos.json
  def create
    @caderno = Caderno.new(caderno_params)

    respond_to do |format|
      if @caderno.save
        format.html { redirect_to @caderno, notice: 'Caderno was successfully created.' }
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
    respond_to do |format|
      if @caderno.update(caderno_params)
        format.html { redirect_to @caderno, notice: 'Caderno was successfully updated.' }
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
      format.html { redirect_to cadernos_url, notice: 'Caderno was successfully destroyed.' }
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
