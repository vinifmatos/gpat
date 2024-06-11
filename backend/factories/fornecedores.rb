require_relative '../lib/gerador_documento'

FactoryBot.define do
  factory :fornecedor do
    tipo { :pessoa_fisica }
    documento { tipo == :pessoa_fisica ? GeradorDocumento.cpf : GeradorDocumento.cnpj }
    razao_social { Faker::Name.name }
    nome_fantasia { tipo == :pessoa_fisica ? nil : razao_social }
    enderecos { [build(:endereco)] }
  end
end
