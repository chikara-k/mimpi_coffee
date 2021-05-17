FactoryBot.define do
  factory :cart_item do
    amount { Faker::Number.unique.number(1) }
    customer
  end
end