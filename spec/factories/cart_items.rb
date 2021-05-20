FactoryBot.define do
  factory :cart_item do
    amount { 5 }
    customer
  end
end