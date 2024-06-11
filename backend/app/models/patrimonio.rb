class Patrimonio < ApplicationRecord
  has_many :responsaveis, through: :responsavel_patrimonios
  belongs_to :grupo
  belongs_to :fornecedor
  has_many :movimentacao_itens
  has_many :movimentacoes, through: :movimentacao_itens
  enum :situacao, %i[pendente ativo em_manutencao inativo],
       validate: { message: "'%<value>s' não é uma situação válida" }
  validates :descricao, :data_aquisicao, :valor_aquisicao, :vida_util, :valor_residual,
            :situacao, :grupo_id, presence: true
  validates :valor_aquisicao, :valor_residual, numericality: { greater_than: 0 }
  validates :numero_empenho, :ano_empenho, :numero_processo_compra, :ano_processo_compra,
            numericality: { only_integer: true, greater_than: 0, allow_nil: true }
  validates :vida_util, numericality: { only_integer: true, greater_than: 0 }
  validate :data_baixa_maior_que_incorporacao
  validate :valida_situacao
  validate :valida_se_grupo_e_subgrupo
  before_update :verifica_desincorporado
  validates :codigo, uniqueness: true
  before_validation :set_situacao
  belongs_to :localizacao_atual, class_name: 'Local', foreign_key: 'local_id', optional: true

  private

  def atualiza_localizacao_atual
    self.local_id = movimentacoes.order('data desc').limit(1).first.local_id
  end

  def set_situacao
    self.situacao = case
                    when new_record? && data_incorporacao.nil? then :pendente
                    when (new_record? && data_incorporacao.present? && data_baixa.nil?) || (data_baixa.nil? && data_incorporacao.present?) then :ativo
                    when data_baixa.present? && data_incorporacao.present? then :inativo
                    else :pendente
                    end
  end

  def valida_se_grupo_e_subgrupo
    return if grupo&.subgrupo?

    errors.add(:grupo, 'não pode ser um grupo pai')
  end

  def verifica_desincorporado
    return unless desativo? || situacao_was == 'desincorporado' || data_baixa != data_baixa_was

    errors.add(:error, 'O patrimônio já foi desincorporado')
    throw(:abort)
  end

  def data_baixa_maior_que_incorporacao
    return if data_baixa.nil?

    errors.add(:data_baixa, 'deve ser maior ou igual a data de incorporação') if data_baixa < data_incorporacao
  end

  def valida_situacao
    if pendente? && (data_incorporacao.present? || data_baixa.present?)
      errors.add(:situacao, 'é invalida')
      errors.add(:data_incorporacao, "precisa estar vazia para a situação #{situacao}") unless data_incorporacao.nil?
      errors.add(:data_baixa, "precisa estar vazia para a situação #{situacao}") unless data_baixa.nil?
    elsif ativo? && (data_incorporacao.nil? || data_baixa.present?)
      errors.add(:situacao, 'é invalida')
      errors.add(:data_incorporacao, "precisa estar preenchida para a situação #{situacao}") if data_incorporacao.nil?
      errors.add(:data_baixa, "precisa estar vazia para a situação #{situacao}") unless data_baixa.nil?
    elsif em_manutencao? && (data_incorporacao.nil? || data_baixa.present?)
      errors.add(:situacao, 'é invalida')
      errors.add(:data_incorporacao, "precisa estar preenchida para a situação #{situacao}") if data_incorporacao.nil?
      errors.add(:data_baixa, "precisa estar vazia para a situação #{situacao}") unless data_baixa.nil?
    elsif inativo? && (data_incorporacao.nil? || data_baixa.nil?)
      errors.add(:situacao, 'é invalida')
      errors.add(:data_incorporacao, "precisa estar preenchida para a situação #{situacao}") if data_incorporacao.nil?
      errors.add(:data_baixa, "precisa estar preenchida para a situação #{situacao}") if data_baixa.nil?
    end
  end
end
