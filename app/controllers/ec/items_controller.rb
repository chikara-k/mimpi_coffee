class Ec::ItemsController < ApplicationController
  def index
    @items = Item.where(is_sales: true)
  end

  def show
  end
  
  def item_params
    params.require(:item).permit(:genre_id, :name, :image, :taste_bitter, :taste_sour, :taste_aroma, :taste_body, :roasting_level, :introduction, :price, :is_sales)
  end
end
