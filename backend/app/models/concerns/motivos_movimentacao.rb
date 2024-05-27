module MotivosMovimentacao
  extend ActiveSupport::Concern

  included do
    enum :motivo, %i[incorporacao transferencia emprestimo manutencao desincorporacao inventario], validate: { message: "'%{value}' não é um motivo válido" }
  end
end