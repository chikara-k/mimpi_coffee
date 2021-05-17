FactoryBot.define do
  factory :genre do
    name { Faker::Lorem.characters(number: 8) }
  end
end