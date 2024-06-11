FactoryBot.define do
  factory :patrimonio do
    codigo { nil }
    descricao { Faker::Commerce.product_name }
    especificacao { Faker::Lorem.paragraph }
    data_aquisicao { Faker::Date.between(from: 2.years.ago, to: Date.today) }
    data_incorporacao { data_aquisicao }
    valor_aquisicao { Faker::Number.between(from: 100.0, to: 10000.0) }
    vida_util { 120 }
    valor_residual { valor_aquisicao * 0.1 }
    data_baixa { nil }
    grupo { create(:subgrupo) }
    numero_empenho { Faker::Number.between(from: 1, to: 5000) }
    ano_empenho { Faker::Number.between(from: 2020, to: 2030) }
    numero_processo_compra { Faker::Number.between(from: 1, to: 5000) }
    ano_processo_compra { Faker::Number.between(from: 2020, to: 2030) }
    fornecedor

    factory :patrimonio_pendente do
      data_incorporacao { nil }
    end

    factory :patrimonio_inativo do
      data_baixa { Faker::Date.between(from: data_incorporacao, to: data_incorporacao + 10.days) }
    end
  end
end
