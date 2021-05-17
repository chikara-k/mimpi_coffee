FactoryBot.define do
  factory :address do
    name { Faker::Lorem.characters(number: 10) }
    postal_code { Faker::Lorem.characters(number: 7) }
    address { Faker::Lorem.characters(number: 10) }
    customer
  end
end
