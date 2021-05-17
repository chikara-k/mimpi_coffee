FactoryBot.define do
  factory :order_detail do
    amount { Faker::Number.unique.number(1) }
    subtotal { Faker::Number.unique.number(4) }
    order
    item
  end
end