class Patrimonio < ApplicationRecord
  include ValidacoesPatrimonio
  belongs_to :grupo
  belongs_to :fornecedor
  has_many :responsaveis, through: :responsavel_patrimonios
  has_many :movimentacao_itens
  has_many :movimentacoes, through: :movimentacao_itens
  has_one :ultima_movimentacao_item, lambda {
    joins(:movimentacao)
      .order('movimentacoes."data" desc, movimentacao_itens.created_at desc')
  }, class_name: 'MovimentacaoItem'
  has_one :ultima_movimentacao, through: :ultima_movimentacao_item, source: :movimentacao
  enum :situacao, %i[pendente ativo em_manutencao inativo],
       validate: { message: "'%<value>s' não é uma situação válida" }
  before_update :verifica_desincorporado

  def localizacao_atual
    ultima_movimentacao.local
  end
end
