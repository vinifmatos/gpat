class Fornecedor < ApplicationRecord
  has_one :endereco
  accepts_nested_attributes_for :endereco
  validate :validacao_documento
  validates :documento, uniqueness: { message: ->(obj, _) { "#{obj.pessoa_fisica? ? 'CPF' : 'CNPJ'} já cadastrado" } }
  validates :tipo, :razao_social, :documento, presence: { message: 'É obrigatório' }

  enum tipo: %i[pessoa_fisica pessoa_juridica]
  TIPOS_AS_HASH = {
    pessoa_fisica: 'Pessoa Física',
    pessoa_juridica: 'Pessoa Jurídica'
  }.freeze

  def self.tipos_as_hash
    TIPOS_AS_HASH
  end

  def documento_valido?
    pessoa_fisica? ? validar_cpf : validar_cnpj
  end

  private

  def validacao_documento
    errors.add(:documento, "O #{pessoa_fisica? ? 'CPF' : 'CNPJ'} não é válido.") unless documento_valido?
  end

  def validar_cpf
    cpf = documento.gsub(/[^\d]/, '') # Remove caracteres não numéricos

    # Verifica se o CPF tem 11 dígitos
    return false unless cpf.length == 11

    # Verifica se todos os dígitos são iguais, o que tornaria o CPF inválido
    return false if cpf.chars.uniq.length == 1

    # Calcula o primeiro dígito verificador
    soma = 0
    9.times { |i| soma += cpf[i].to_i * (10 - i) }
    resto = soma % 11
    digito_verificador1 = resto < 2 ? 0 : 11 - resto

    # Calcula o segundo dígito verificador
    soma = 0
    10.times do |i|
      soma += cpf[i].to_i * (11 - i)
    end
    resto = soma % 11
    digito_verificador2 = resto < 2 ? 0 : 11 - resto

    # Verifica se os dígitos verificadores calculados são iguais aos dígitos do CPF
    cpf[-2..] == "#{digito_verificador1}#{digito_verificador2}"
  end

  def validar_cnpj
    cnpj = documento.gsub(/[^\d]/, '') # Remove caracteres não numéricos

    # Verifica se o CNPJ tem 14 dígitos
    return false unless cnpj.length == 14

    # Verifica se todos os dígitos são iguais, o que tornaria o CNPJ inválido
    return false if cnpj.chars.uniq.length == 1

    # Calcula o primeiro dígito verificador
    soma = 0
    peso = 5
    12.times do |i|
      soma += cnpj[i].to_i * peso
      peso -= 1
      peso = 9 if peso < 2
    end
    resto = soma % 11
    digito_verificador1 = resto < 2 ? 0 : 11 - resto

    # Calcula o segundo dígito verificador
    soma = 0
    peso = 6
    13.times do |i|
      soma += cnpj[i].to_i * peso
      peso -= 1
      peso = 9 if peso < 2
    end
    resto = soma % 11
    digito_verificador2 = resto < 2 ? 0 : 11 - resto

    # Verifica se os dígitos verificadores calculados são iguais aos dígitos do CNPJ
    cnpj[-2..] == "#{digito_verificador1}#{digito_verificador2}"
  end
end
