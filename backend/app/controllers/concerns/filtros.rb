module Filtros
  extend ActiveSupport::Concern
  OPERADORES_PERMITIDOS = /^(?<operador>=|<>|>=|<=|~\*|~)(?<valor>.*)/

  included do
    before_action :set_filtros, only: :index
  end

  private

  def set_filtros
    filtros = params.permit(*model.column_names)
    campos = []
    valores = []
    filtros.each do |k, v|
      match = v.to_s.match(OPERADORES_PERMITIDOS)
      if match && coluna_valida?(k)
        campos << "#{k} #{match[:operador]} ?"
        valores << match[:valor]
      end
    end
    @filtros = campos.empty? ? [] : [campos.join(' and ')] + valores
  end

  def coluna_valida?(coluna)
    model.column_names.include?(coluna)
  end

  def model
    controller_name.classify.constantize
  end

  module Grupos
    extend Filtros

    private

    def set_filtros
      filtros = params.permit(*model.column_names.reject { |k| %i[grupos subgrupos].include?(k) })
      campos = []
      valores = []
      filtros.each do |k, v|
        match = v.to_s.match(OPERADORES_PERMITIDOS)
        next unless match && coluna_valida?(k)

        if params[:grupos] && k == 'descricao'
          campos << "(grupos.#{k} #{match[:operador]} ? or subgrupos_grupos.#{k} #{match[:operador]} ?)"
          valores << match[:valor]
        else
          campos << "grupos.#{k} #{match[:operador]} ?"
        end
        valores << match[:valor]
      end
      @filtros = campos.empty? ? [] : [campos.join(' and ')] + valores
    end
  end
end
