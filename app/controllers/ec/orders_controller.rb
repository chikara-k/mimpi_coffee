class Ec::OrdersController < ApplicationController
  #？ before_action :authenticate_customer!  全部完了したらコメント外す
  def new
    @orders = Order.new
    @customer = current_customer
  end

  def comfirm
    @cart_items = current_customer.cart_items
  end

  def create
  end

  def complete
  end

  def index
  end

  def update
  end

  def show
  end

  private
  def order_params
    params.require(:order).permit(:name, :address, :postal_code, :payment_method)
  end

end
