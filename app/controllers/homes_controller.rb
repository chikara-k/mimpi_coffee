class HomesController < ApplicationController
  def top
    items = Item.includes(:favorited_customers).sort {|a,b| b.favorited_customers.size <=> a.favorited_customers.size}
    @items = items.first(4)
  end

  def about
  end
end
