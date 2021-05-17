FactoryBot.define do
  # 実際は.envなどで隠す？
  factory :admin do
    email { 'admin@admin' }
    password { 'adminadmin' }
  end
end