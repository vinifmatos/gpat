class MovimentacaoItem < ApplicationRecord
  belongs_to :movimentacao
  belongs_to :patrimonio
end
