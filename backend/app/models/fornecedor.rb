class Fornecedor < ApplicationRecord
  include ValidarDocumento
  has_many :enderecos, dependent: :destroy
  accepts_nested_attributes_for :enderecos, allow_destroy: true
  validate :validacao_documento
  validates :documento, uniqueness: { message: ->(obj, _) { "#{obj.pessoa_fisica? ? 'CPF' : 'CNPJ'} já cadastrado" } }
  validates :tipo, :razao_social, :documento, presence: { message: 'É obrigatório' }
  enum tipo: %i[pessoa_fisica pessoa_juridica]
  TIPOS_AS_HASH = {
    pessoa_fisica: 'Pessoa Física',
    pessoa_juridica: 'Pessoa Jurídica'
  }.freeze
  validate :unico_endereco_principal

  def self.tipos_as_hash
    TIPOS_AS_HASH
  end

  def documento_valido?
    pessoa_fisica? ? validar_cpf(documento) : validar_cnpj(documento)
  end

  private

  def unico_endereco_principal
    # Adiciona um erro se houver mais de um endereço principal
    errors.add(:enderecos, 'Um fornecedor deve possuir apenas um endereço principal') if enderecos.select { |e| e.principal }.count > 1
  end

  def validacao_documento
    errors.add(:documento, "O #{pessoa_fisica? ? 'CPF' : 'CNPJ'} não é válido.") unless documento_valido?
  end
end
