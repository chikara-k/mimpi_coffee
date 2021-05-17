FactoryBot.define do
  factory :order do
    postal_code { Faker::Lorem.characters(number: 7) }
    address { Faker::Lorem.characters(number: 12) }
    name { Faker::Lorem.characters(number: 10) }
    shipping_cost { 800 }
    total_payment { Faker::Number.unique.number(4) }
    payment_method { 0 }
    order_status { 0 }
    customer
  end
end