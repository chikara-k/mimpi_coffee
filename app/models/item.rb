class Item < ApplicationRecord
  has_many :cart_items
  has_many :order_details
  #belongs_to :genre #? TODO: genreテーブル実装後修正

  attachment :image

  validates :name, presence: true
  # validates :taste_bitter, presence: true
  # validates :taste_sour, presence: true
  # validates :taste_aroma, presence: true
  # validates :taste_body, presence: true
  # validates :roasting_level, presence: true
  # validates :introduction, presence: true
  validates :price, presence: true
  validates :is_sales, inclusion:{in: [true, false]}

  enum roasting_level: { "深煎り": "0", "中煎り": "1", "浅煎り": "2" }

end
