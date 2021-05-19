class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cart_items, dependent: :destroy
  has_many :addresses, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :last_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :email, presence: true
  validates :postal_code, presence: true
  validates :address, presence: true
  validates :telephone_number, presence: true
  validates :is_active, inclusion: { in: [true, false] }

  # ゲストログイン
  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |customer|
      customer.password = SecureRandom.urlsafe_base64
      customer.last_name = "ユーザー"
      customer.first_name = "ゲスト"
      customer.last_name_kana = "ゆーざー"
      customer.first_name_kana = "げすと"
      customer.postal_code = "1518557"
      customer.address = "東京都渋谷区代々木神園町１−１"
      customer.telephone_number = "0312123434"
      customer.is_active = true
    end
  end

  # 退会したユーザーのログインを無効にする
  def active_for_authentication?
    super && (is_active == true)
  end
end
