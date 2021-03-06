class Ec::OrdersController < ApplicationController
  before_action :authenticate_customer!

  def new
    return redirect_to ec_cart_items_path if current_customer.cart_items.blank?
    @orders = Order.new
    @customer = current_customer
  end

  def confirm
    @cart_items = current_customer.cart_items
    @item_total = 0
    @cart_items.each do |cart_item|
      @item_total += (cart_item.item.price_tax_included * cart_item.amount).to_i
    end

    @order = Order.new
    @order.payment_method = (params[:order][:payment_method])
    if params[:order][:address_option] == '0'
      @order.address = current_customer.address
      @order.postal_code = current_customer.postal_code
      @order.name = current_customer.last_name + current_customer.first_name
    elsif params[:order][:address_option] == '1'
      @address = Address.find(params[:order][:address_id])
      @order.address = @address.address
      @order.postal_code = @address.postal_code
      @order.name = @address.name
    elsif params[:order][:address_option] == '2'
      @order.address = params[:order][:address]
      @order.postal_code = params[:order][:postal_code]
      @order.name = params[:order][:name]
    end
  end

  def create
    @cart_items = current_customer.cart_items
    @item_total = 0
    @cart_items.each do |cart_item|
      @item_total += (cart_item.item.price_tax_included * cart_item.amount).to_i
    end

    @order = Order.new(order_params)
    @order.customer_id = current_customer.id
    @order.shipping_cost = 800
    @order.total_payment = @item_total + @order.shipping_cost
    @order.order_status = 0

    if @order.save
      @cart_items = current_customer.cart_items
      @cart_items.each do |cart_item|
        order_item = OrderDetail.new(
          item_id: cart_item.item.id,
          order_id: @order.id,
          amount: cart_item.amount,
          price: (cart_item.item.price_tax_included).to_i,
          subtotal: (cart_item.item.price_tax_included.to_i * cart_item.amount).to_i
        )
        order_item.save
        cart_item.destroy
      end
      redirect_to ec_orders_complete_path
    end
  end

  def complete
  end

  def index
    @orders = Order.where(customer_id: current_customer).includes([:order_details]).order(created_at: :desc)
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      redirect_to ec_orders_confirm_path
    end
  end

  def show
    @order = Order.find(params[:id])
    if @order.customer_id != current_customer.id
      redirect_to customers_sign_in_path
    end

    @item_total = 0
    @order.order_details.each do |order_detail|
      @item_total += order_detail.price * order_detail.amount
    end
  end

  private

  def order_params
    params.require(:order).permit(:customer_id,
                                  :address_id,
                                  :name,
                                  :address,
                                  :postal_code,
                                  :payment_method)
  end
end
