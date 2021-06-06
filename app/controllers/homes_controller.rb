class HomesController < ApplicationController
  def top
    items = Item.includes(:favorited_customers).sort {|a,b| b.favorited_customers.size <=> a.favorited_customers.size}
    @items = items.first(10)

    @new_items = Item.last(8)
  end

  def about
  end
end
