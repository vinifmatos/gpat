class PatrimoniosController < ApplicationController
  before_action :set_patrimonio, only: %i[ show update destroy ]
  include FiltrosPaginacao

  # GET /patrimonios
  def index
    filtro_situacao = @filtros.delete(:situacao)&.to_sym
    @patrimonios = case filtro_situacao
                   when :pendentes then
                     Patrimonio.pendente.includes(:grupo, :fornecedor).where(@filtros).order(@ordernacao).page(@pagina).per(@limite_pagina).all
                   when :inativos then Patrimonio.inativo.includes(:grupo, :fornecedor).where(@filtros).order(@ordernacao).page(@pagina).per(@limite_pagina).all
                   when :manutencao then Patrimonio.em_manutencao.includes(:grupo, :fornecedor).where(@filtros).order(@ordernacao).page(@pagina).per(@limite_pagina).all
                   when :todas then Patrimonio.includes(:grupo, :fornecedor).where(@filtros).order(@ordernacao).page(@pagina).per(@limite_pagina).all
                   else Patrimonio.ativo.includes(:grupo, :fornecedor).where(@filtros).order(@ordernacao).page(@pagina).per(@limite_pagina).all
                   end
  end

  def movimentacoes
    @movimentacoes = Patrimonio.find(params[:patrimonio_id]).movimentacoes.all
  end

  # GET /patrimonios/1
  def show
  end

  def situacoes
    render json: Patrimonio.situacoes.keys
  end

  # POST /patrimonios
  def create
    @patrimonio = Patrimonio.new(patrimonio_params)

    if @patrimonio.save
      render :show, status: :created, location: @patrimonio
    else
      render json: @patrimonio.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /patrimonios/1
  def update
    if @patrimonio.update(patrimonio_params)
      render :show
    else
      render json: @patrimonio.errors, status: :unprocessable_entity
    end
  end

  # DELETE /patrimonios/1
  def destroy
    @patrimonio.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patrimonio
      @patrimonio = Patrimonio.includes(:grupo, :fornecedor).find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patrimonio_params
      params.require(:patrimonio).permit(:codigo, :descricao, :especificacao, :data_aquisicao, :data_incorporacao, :valor_aquisicao, :vida_util, :valor_residual, :data_baixa, :grupo_id, :numero_empenho, :ano_empenho, :numero_processo_compra, :ano_processo_compra, :fornecedor_id, :local_id)
    end
end
