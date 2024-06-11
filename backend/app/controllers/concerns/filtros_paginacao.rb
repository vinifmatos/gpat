module FiltrosPaginacao
  extend ActiveSupport::Concern

  included do
    before_action :set_params_filtros_paginacao, only: :index
  end

  private

  def set_params_filtros_paginacao
    @pagina = params[:pagina] || 1
    @limite_pagina = params[:limite_pagina] || 25
    set_filtros
    set_ordernacao(params[:ordenar_por], params[:ordenacao])
  end

  def set_ordernacao(ordenar_por, ordenacao)
    colunas = (ordenar_por || 'created_at').split(',')
    ordenacao_colunas = (ordenacao || 'asc').split(',')

    # garante que os dois arrays tem o mesmo tamanho
    ordenacao_colunas = ordenacao_colunas.cycle.take(colunas.size) if ordenacao_colunas.size < colunas.size

    @ordernacao = colunas.zip(ordenacao_colunas).map do |coluna, ordem|
      coluna_valida = coluna_valida?(coluna) ? coluna : 'created_at'
      ordem_valida = %w[asc desc].include?(ordem) ? ordem : 'asc'
      "#{coluna_valida} #{ordem_valida}"
    end.join(', ')
  end

  def set_filtros
    @filtros = params.permit(model.column_names)
  end

  def coluna_valida?(coluna)
    model.column_names.include?(coluna)
  end

  def model
    controller_name.classify.constantize
  end
end
