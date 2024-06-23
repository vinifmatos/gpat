FactoryBot.define do
  factory :movimentacao do
    local
    data { Faker::Date.between(from: Date.today, to: 2.days.from_now) }
  end
end
