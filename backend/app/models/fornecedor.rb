class Fornecedor < ApplicationRecord
  include ValidarDocumento
  has_many :enderecos, dependent: :destroy
  accepts_nested_attributes_for :enderecos, allow_destroy: true
  validate :validacao_documento
  validates :documento, uniqueness: { message: ->(obj, _) { "#{obj.pessoa_fisica? ? 'CPF' : 'CNPJ'} já cadastrado" } }
  validates :tipo, :razao_social, :documento, presence: { message: 'É obrigatório' }
  enum :tipo, %i[pessoa_fisica pessoa_juridica], validate: { message: "'%<value>s' não é um tipo válido" }
  validate :unico_endereco_principal

  def documento_valido?
    pessoa_fisica? ? validar_cpf(documento) : validar_cnpj(documento)
  end

  def self.ransackable_attributes(_auth_object = nil)
    %w[created_at documento id id_value nome_fantasia razao_social tipo updated_at]
  end

  private

  def unico_endereco_principal
    # Adiciona um erro se houver mais de um endereço principal
    if enderecos.select do |e|
         e.principal
       end.count > 1
      errors.add(:enderecos_attributes,
                 'Um fornecedor deve possuir apenas um endereço principal')
    end
  end

  def validacao_documento
    errors.add(:documento, "O #{pessoa_fisica? ? 'CPF' : 'CNPJ'} não é válido.") unless documento_valido?
  end
end
