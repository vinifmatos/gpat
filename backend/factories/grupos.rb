FactoryBot.define do
  factory :grupo do
    codigo { nil }
    descricao { Faker::Commerce.department(max: 1, fixed_amount: true) }
    ativo { true }
    grupo_id { nil }
  end

  factory :subgrupo, parent: :grupo do
    grupo { create(:grupo) }
  end
end
