class Patrimonio < ApplicationRecord
  has_many :responsaveis, through: :responsavel_patrimonios
  belongs_to :grupo
  belongs_to :fornecedor
  has_many :movimentacao_itens
  has_many :movimentacoes, through: :movimentacao_itens
  enum :situacao, [:nao_incorporado, :incorporado, :em_manutencao, :desincorporado], validate: { message: "'%{value}' não é uma situação válida" }
  validates :codigo, :descricao, :data_aquisicao, :data_incorporacao, :valor_aquisicao, :vida_util, :valor_residual, :situacao, :grupo_id, presence: true
  validates :valor_aquisicao, :valor_residual, numericality: { greater_than: 0 }
  validates :vida_util, :numero_empenho, :ano_empnho, :numero_processo_compra, :ano_processo_compra, numericality: { only_integer: true, greater_than: 0, allow_nil: true }
  validate :data_desincorporacao_maior_que_incorporacao
  validate :valida_situacao
  validate :valida_grupo_e_filho
  before_update :verifica_desincorporado
  validates :codigo, uniqueness: true

  SQL_COM_LOCALIZACAO_ATUAL = '
  left join lateral (
    select
      locais.descricao localizacao_atual
    from
      movimentacao_itens
      left join movimentacoes on
        movimentacoes.id = movimentacao_itens.movimentacao_id
      left join locais on
        locais.id = movimentacoes.local_id
    where
      movimentacao_itens.patrimonio_id = patrimonios.id
    order by
    movimentacoes."data" desc
    limit 1
  ) localizacao_atual on true'.freeze

  scope :com_localizacao_atual, -> {
    joins(SQL_COM_LOCALIZACAO_ATUAL).select('patrimonios.*, localizacao_atual.localizacao_atual')
  }

  def get_localizacao_atual
    Patrimonio.com_localizacao_atual.select('localizacao_atual.localizacao_atual').find(id)&.localizacao_atual
  end

  private

  def valida_grupo_e_filho
    return if grupo.filho?

    errors.add(:grupo_id, 'não pode ser um grupo pai')
  end

  def verifica_desincorporado
    return unless desincorporado? || situacao_was == 'desincorporado' || data_desincorporacao != data_desincorporacao_was

    errors.add(:error, 'O patrimônio já foi desincorporado')
    throw(:abort)
  end

  def data_desincorporacao_maior_que_incorporacao
    return if data_desincorporacao.nil?
    errors.add(:data_desincorporacao, 'deve ser maior ou igual a data de incorporação') if data_desincorporacao < data_incorporacao
  end

  def valida_situacao
    case
      when nao_incorporado? && (!data_incorporacao.nil? || !data_desincorporacao.nil?)
        errors.add(:situacao, 'é invalida')
        errors.add(:data_incorporacao, 'precisa estar vazia para a sitação atual') unless data_incorporacao.nil?
        errors.add(:data_desincorporacao, 'precisa estar vazia para a sitação atual') unless data_desincorporacao.nil?
      when incorporado? && (data_incorporacao.nil? || !data_desincorporacao.nil?)
        errors.add(:situacao, 'é invalida')
        errors.add(:data_incorporacao, 'precisa estar preenchida para a sitação atual') if data_incorporacao.nil?
        errors.add(:data_desincorporacao, 'precisa estar vazia para a sitação atual') unless data_desincorporacao.nil?
      when em_manutencao? && (data_incorporacao.nil? || !data_desincorporacao.nil?)
        errors.add(:situacao, 'é invalida')
        errors.add(:data_incorporacao, 'precisa estar preenchida para a sitação atual') if data_incorporacao.nil?
        errors.add(:data_desincorporacao, 'precisa estar vazia para a sitação atual') unless data_desincorporacao.nil?
      when desincorporado? && (data_incorporacao.nil? || data_desincorporacao.nil?)
        errors.add(:situacao, 'é invalida')
        errors.add(:data_incorporacao, 'precisa estar preenchida para a sitação atual') if data_incorporacao.nil?
        errors.add(:data_desincorporacao, 'precisa estar preenchida para a sitação atual') if data_desincorporacao.nil?
    end
  end
end
