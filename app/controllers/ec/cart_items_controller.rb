class Ec::CartItemsController < ApplicationController
  def index
  end
  
  def create
  end
  
  def update
  end
  
  def destroy
  end
  
  def empty
  end
  
  private
  
  def cart_item_params
    params.require(:cart_item).permit(:item_id, :amount, :customer_id)
  end
end
