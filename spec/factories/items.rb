FactoryBot.define do
  factory :item do
    name { Faker::Lorem.characters(number: 7) }
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'app/assets/images/img/sample.png')) }
    roasting_level { "深煎り" }
    price { Faker::Number.unique.number(4) }
    is_sales { 'true' }
    genre
  end
end
