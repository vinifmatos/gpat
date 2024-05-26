class LocalizacoesController < ApplicationController
  before_action :set_localizacao, only: %i[ show update destroy ]

  # GET /localizacoes
  # GET /localizacoes.json
  def index
    @localizacoes = Localizacao.all
  end

  # GET /localizacoes/1
  # GET /localizacoes/1.json
  def show
  end

  # POST /localizacoes
  # POST /localizacoes.json
  def create
    @localizacao = Localizacao.new(localizacao_params)

    if @localizacao.save
      render :show, status: :created, location: @localizacao
    else
      render json: @localizacao.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /localizacoes/1
  # PATCH/PUT /localizacoes/1.json
  def update
    if @localizacao.update(localizacao_params)
      render :show, status: :ok, location: @localizacao
    else
      render json: @localizacao.errors, status: :unprocessable_entity
    end
  end

  # DELETE /localizacoes/1
  # DELETE /localizacoes/1.json
  def destroy
    @localizacao.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_localizacao
      @localizacao = Localizacao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def localizacao_params
      params.require(:localizacao).permit(:patrimonio_id, :local_id, :data, :motivo)
    end
end
