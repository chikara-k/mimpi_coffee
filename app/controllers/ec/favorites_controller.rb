class Ec::FavoritesController < ApplicationController
  def create
    @item = Item.find(params[:item_id])
    favorite = current_customer.favorites.build(item_id: params[:item_id])
    favorite.save
  end

  def destroy
    @item = Item.find(params[:item_id])
    favorite = current_customer.favorites.find_by(item_id: params[:item_id])
    favorite.destroy
  end
end
