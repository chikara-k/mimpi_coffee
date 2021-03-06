class Ec::ItemsController < ApplicationController
  def index
    @blended_coffee = Item.where(genre_id: 1, is_sales: true)
    @asian_coffee = Item.where(genre_id: 2, is_sales: true)
    @african_coffee = Item.where(genre_id: 3, is_sales: true)
    @latian_america_coffee = Item.where(genre_id: 4, is_sales: true)
    @others = Item.where(genre_id: 5, is_sales: true)
  end

  def show
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
  end

  def roast
    @light_roast = Item.where(roasting_level: 2, is_sales: true)
    @medium_roast = Item.where(roasting_level: 1, is_sales: true)
    @city_roast = Item.where(roasting_level: 0, is_sales: true)
  end

  def map
    results = Geocoder.search(params[:map_address])
    @latlng = results.first.coordinates

    respond_to do |format|
      format.js
    end
  end

  private

  def item_params
    params.require(:item).permit(:genre_id,
                                 :name,
                                 :image,
                                 :taste_bitter,
                                 :taste_sour,
                                 :taste_aroma,
                                 :taste_body,
                                 :roasting_level,
                                 :country,
                                 :introduction,
                                 :price,
                                 :is_sales)
  end
end
