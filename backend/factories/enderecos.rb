FactoryBot.define do
  factory :endereco do
    logradouro { Faker::Address.street_name }
    numero { Faker::Address.building_number }
    bairro { Faker::Address.community }
    complemento { Faker::Address.secondary_address }
    cep { Faker::Number.number(digits: 8).to_s }
    cidade_id { 3524402 }
    local_id { nil }
    fornecedor_id { nil }
    principal { true }
  end
end
