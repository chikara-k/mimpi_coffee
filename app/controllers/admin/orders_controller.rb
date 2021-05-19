class Admin::OrdersController < ApplicationController
  before_action :authenticate_admin!

  def index
    @orders = Order.all.order(created_at: :desc).includes([:customer, :order_details])
  end

  def show
    @order = Order.find(params[:id])
    @order_details = @order.order_details
    @item_total = 0
    @order.order_details.each do |order_detail|
      @item_total += order_detail.price * order_detail.amount
    end
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_status_params)
      flash[:success] = "注文ステータスを更新しました"
      redirect_to admin_order_path(@order)
    else
      render :show
    end
  end

  private

  def order_status_params
    params.require(:order).permit(:order_status)
  end
end
