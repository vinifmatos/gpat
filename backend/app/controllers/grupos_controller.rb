class GruposController < ApplicationController
  before_action :set_grupo, only: %i[ show update destroy ]

  # GET /grupos
  def index
    @grupos = Grupo.includes(:filhos).where(grupo_id: nil).all
  end

  # GET /grupos/1
  def show
  end

  # POST /grupos
  def create
    @grupo = Grupo.new(grupo_params)

    if @grupo.save
      render :show, status: :created, location: @grupo
    else
      render json: @grupo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /grupos/1
  def update
    if @grupo.update(grupo_params)
      render :show
    else
      render json: @grupo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /grupos/1
  def destroy
    @grupo.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grupo
      @grupo = Grupo.includes(:filhos).find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grupo_params
      params.require(:grupo).permit(:codigo, :grupo_id, :descricao, :ativo)
    end
end
