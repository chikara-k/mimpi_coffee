class Admin::OrdersController < ApplicationController
   #？ before_action :authenticate_admin!  全部完了したらコメント外す
  
  def index
    @orders = Order.all.order(created_at: :desc)
  end

  def show
  end
  
  def update
  end
  
  private
  def order_status_params
    params.require(:order).permit(:status)
  end
end
