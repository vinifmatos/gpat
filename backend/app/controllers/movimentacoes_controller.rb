class MovimentacoesController < ApplicationController
  before_action :set_movimentacao, only: %i[update destroy]

  # GET /movimentacoes.json
  def index
    @movimentacoes = Movimentacao.includes(:local).all
  end

  def motivos
    render json: Movimentacao.motivos.keys
  end

  # GET /movimentacoes/1.json
  def show
    @movimentacao = Movimentacao.includes(:local, :patrimonios).find(params[:id])
  end

  # POST /movimentacoes.json
  def create
    @movimentacao = Movimentacao.new(movimentacao_params)

    if @movimentacao.save
      render :show, status: :created, location: @movimentacao
    else
      render json: @movimentacao.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movimentacoes/1.json
  def update
    if @movimentacao.update(movimentacao_params)
      render :show, status: :ok, location: @movimentacao
    else
      render json: @movimentacao.errors, status: :unprocessable_entity
    end
  end

  # DELETE /movimentacoes/1.json
  def destroy
    @movimentacao.destroy!
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_movimentacao
    @movimentacao = Movimentacao.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def movimentacao_params
    params.require(:movimentacao).permit(:data, :local_id, :motivo, movimentacao_itens_attributes: %i[id patrimonio_id])
  end
end
