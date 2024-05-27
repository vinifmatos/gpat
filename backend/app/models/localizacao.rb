class Localizacao < ApplicationRecord
  belongs_to :patrimonio
  belongs_to :local
  enum :motivo, %i[incorporacao transferencia emprestimo manutencao desincorporacao], validate: { message: "'%{value}' não é um motivo válido" }
  validates :local_id, :data, :motivo, presence: true
end
