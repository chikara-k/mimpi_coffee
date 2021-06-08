class HomesController < ApplicationController
  def top
    items = Item.where(is_sales: true).includes(:favorited_customers).sort {|a,b| b.favorited_customers.size <=> a.favorited_customers.size}
    @items = items.first(10)

    @new_items = Item.last(8)
  end

  def about
  end

  def book
  end
end
