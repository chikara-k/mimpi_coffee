class Item < ApplicationRecord
  has_many :cart_items
  has_many :order_details
  belongs_to :genre
  
  attachment :image
  
  validates :name, presence: true
  validates :taste_bitter, presence: true
  validates :taste_sour, presence: true
  validates :taste_aroma, presence: true
  validates :taste_body, presence: true
  validates :introduction, presence: true
  validates :price, presence: true
  validates :is_sales, inclusion:{in: [true, false]}
end
