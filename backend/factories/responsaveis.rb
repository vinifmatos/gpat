require_relative '../lib/gerador_documento'

FactoryBot.define do
  factory :responsavel do
    cpf { GeradorDocumento.cpf }
    nome { Faker::Name.name }
    ativo { true }
  end
end
