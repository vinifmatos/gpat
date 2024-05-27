class LocalizacoesController < ApplicationController
  before_action :set_patrimonio
  before_action :set_localizacao, only: %i[ show update destroy ]

  # GET /patrimonios/:patrimonio_id/localizacoes
  def index
    @localizacoes = @patrimonio.localizacoes.all
  end

  def motivos
    render json: Localizacao.motivos
  end

  # GET /patrimonios/:patrimonio_id/localizacoes/:id
  def show
  end

  # POST /patrimonios/:patrimonio_id/localizacoes
  def create
    @localizacao = @patrimonio.localizacoes.build(localizacao_params)

    if @localizacao.save
      render :show, status: :created
    else
      render json: @localizacao.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /patrimonios/:patrimonio_id/localizacoes/:id
  def update
    if @localizacao.update(localizacao_params)
      render :show, status: :ok
    else
      render json: @localizacao.errors, status: :unprocessable_entity
    end
  end

  # DELETE /patrimonios/:patrimonio_id/localizacoes/:id
  def destroy
    @localizacao.destroy!
  end

  private

  def set_patrimonio
    @patrimonio = Patrimonio.find(params[:patrimonio_id])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_localizacao
    @localizacao = @patrimonio.localizacoes.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def localizacao_params
    params.require(:localizacao).permit(:patrimonio_id, :local_id, :data, :motivo)
  end
end
