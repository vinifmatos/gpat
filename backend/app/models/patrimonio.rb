class Patrimonio < ApplicationRecord
  enum situacao: [:nao_incorporado, :incorporado, :em_manutencao, :desincorporado]

  SITUACOES = {
    nao_incorporado: 'Não Incorporado',
    incorporado: 'Incorporado',
    em_manutencao: 'Em Manutenção',
    desincorporado: 'Desincorporado'
  }.freeze

  def self.situcaoes_as_hash
    SITUACOES
  end
end
