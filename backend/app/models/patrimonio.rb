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
  enum :situacao, { pendente: 0, ativo: 1, em_manutencao: 2, inativo: 3 },
       validate: { message: "'%<value>s' não é uma situação válida" }
  before_update :verifica_desincorporado
  attr_accessor :local_inicial_id
  after_create :cria_movimentacao_inicial

  def localizacao_atual
    ultima_movimentacao.local
  end

  def self.ransackable_attributes(_auth_object = nil)
    column_names
  end

  ransacker :situacao, formatter: proc { |v| situacoes[v] } do |parent|
    parent.table[:situacao]
  end

  def cria_movimentacao_inicial
    Movimentacao.create(
      data: data_incorporacao,
      local_id: local_inicial_id,
      motivo: Movimentacao.motivos[:incorporacao],
      movimentacao_itens: [MovimentacaoItem.new(patrimonio_id: id)]
    )
  end
end
