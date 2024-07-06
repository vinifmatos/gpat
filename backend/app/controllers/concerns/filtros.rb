module Filtros
  extend ActiveSupport::Concern
  OPERADORES_PERMITIDOS = /^(?<operador>=|<>|>=|<=|~\*|~)(?<valor>.*)/

  included do
    before_action :set_filtros, only: :index
  end

  private

  def set_filtros
    filtros = params.permit(*model.column_names, :all)
    @filtros = if filtros.keys.include?(:all)
                 ['1 = 1']
               else
                 campos = []
                 valores = []
                 filtros.each do |k, v|
                   match = v.match(OPERADORES_PERMITIDOS)
                   if match && coluna_valida?(k)
                     campos << "#{k} #{match[:operador]} ?"
                     valores << match[:valor]
                   end
                 end

                 campos.empty? ? [] : [campos.join(' and ')] + valores
               end
  end

  def coluna_valida?(coluna)
    model.column_names.include?(coluna)
  end

  def model
    controller_name.classify.constantize
  end
end
