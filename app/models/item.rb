class Item < ApplicationRecord
  has_many :cart_items
  has_many :order_details
  has_many :favorites, dependent: :destroy
  belongs_to :genre

  attachment :image

  def favorited_by?(customer)
    favorites.where(customer_id: customer.id).exists?
  end

  validates :name, presence: true
  validates :image, presence: true
  validates :roasting_level, presence: true

  validates :price, presence: true
  validates :is_sales, inclusion: { in: [true, false] }

  enum roasting_level: { "深煎り": 0, "中煎り": 1, "浅煎り": 2 }
end
