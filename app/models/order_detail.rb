class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :item

  validates :amount, presence: true
  validates :subtotal, presence: true
end
