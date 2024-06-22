class Patrimonio < ApplicationRecord
  include ValidacoesPatrimonio
  belongs_to :grupo
  belongs_to :fornecedor
  belongs_to :localizacao_atual, class_name: 'Local', foreign_key: 'local_id', optional: true
  has_many :responsaveis, through: :responsavel_patrimonios
  has_many :movimentacao_itens
  has_many :movimentacoes, through: :movimentacao_itens
  enum :situacao, %i[pendente ativo em_manutencao inativo],
       validate: { message: "'%<value>s' não é uma situação válida" }
  before_update :verifica_desincorporado

  def atualizar_localizacao_atual!(local)
    update(local_id: local.is_a?(Local) ? local.id : local)
  end
end
