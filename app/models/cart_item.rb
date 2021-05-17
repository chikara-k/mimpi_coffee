class CartItem < ApplicationRecord
  belongs_to :customer
  belongs_to :item

  validates :item_id, presence: true
  validates :amount, numericality: {
    only_integer: true,
    greater_than: 0,
    less_than_or_equal_to: 10,
  }
end
