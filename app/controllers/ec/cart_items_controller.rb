class Ec::CartItemsController < ApplicationController
  before_action :authenticate_customer!

  def index
    @cart_items = current_customer.cart_items
    @tax=1.1
    @item_total = 0
    @cart_items.each do |cart_item|
      @item_total += cart_item.item.price * cart_item.amount
    end
  end

  def create
    @item = Item.find(params[:cart_item][:item_id])
    @cart_item = CartItem.new(cart_item_params)
    @cart_item.customer_id = current_customer.id
    @cart_item.item_id = @item.id
    @cart_items = current_customer.cart_items.all
    if current_customer.cart_items.find_by(item_id: @item.id)
      cart_present_item = current_customer.cart_items.find_by(item_id: @item.id)
      new_amount = cart_present_item.amount + @cart_item.amount
      cart_present_item.update_attribute(:amount, new_amount)
    else
      @cart_item.save
    end

    redirect_to ec_cart_items_path
  end

  def update
    cart_item = CartItem.find(params[:id])
    cart_item.update(amount: params[:cart_item][:amount].to_i)
    redirect_to ec_cart_items_path
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to ec_cart_items_path
  end

  # def empty
  #   @cart_items = CartItem.where(customer_id: current_customer)
  #   @cart_items.destroy_all
  #   redirect_to ec_cart_items_path
  # end

  private

  def cart_item_params
    params.require(:cart_item).permit(:item_id, :amount, :customer_id)
  end
end
