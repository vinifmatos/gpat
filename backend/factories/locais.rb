FactoryBot.define do
  factory :local do
    codigo { nil }
    descricao { Faker::Company.department }
    ativo { true }
    local_id { nil }
    endereco
  end
end
