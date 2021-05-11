class Order < ApplicationRecord
  has_many :order_details, dependent: :destroy
  belongs_to :customer

  attachment :image

  validates :postal_code, presence: true
  validates :address, presence: true
  validates :name, presence: true
  validates :shipping_cost, presence: true
  validates :total_payment, presence: true
  validates :payment_method, presence: true
  validates :order_status, presence: true

  enum payment_method: { "クレジットカード": 0, "銀行振り込み": 1 }
	enum order_status: { "入金待ち": 0, "入金確認": 1, "製作中": 2, "発送準備中": 3, "発送済み": 4 }
	enum address_option: { "ご自身の住所": 0, "登録済住所から選択": 1, "新しいお届け先": 2 }

end
