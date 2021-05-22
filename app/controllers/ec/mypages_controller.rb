class Ec::MypagesController < ApplicationController
  before_action :authenticate_customer!

  def show
    if current_customer.id.to_s == params[:id]
      @customer = Customer.find(params[:id])
    else
      redirect_to customers_sign_in_path
    end
    @items = Item.last(4)



    orders = Order.where(customer_id: current_customer)
    order_detail_array = orders.map(&:order_details)
    
    taste_bitter_total = []
    order_detail_array.each do |order_details|
      order_details.each do |order_detail|
        taste_bitter_total << order_detail.item.taste_bitter
      end
    end
    @taste_bitter_average = taste_bitter_total.sum / taste_bitter_total.length.to_f
    # p '-----------------'
    # pp @taste_bitter_average

    taste_sour_total = []
    order_detail_array.each do |order_details|
      order_details.each do |order_detail|
        taste_sour_total << order_detail.item.taste_sour
      end
    end
    @taste_sour_average = taste_sour_total.sum / taste_sour_total.length.to_f
    # p '-----------------'
    # pp @taste_sour_average

    taste_aroma_total = []
    order_detail_array.each do |order_details|
      order_details.each do |order_detail|
        taste_aroma_total << order_detail.item.taste_aroma
      end
    end
    @taste_aroma_average = taste_aroma_total.sum / taste_aroma_total.length.to_f
    # p '-----------------'
    # pp @taste_aroma_average

    taste_body_total = []
    order_detail_array.each do |order_details|
      order_details.each do |order_detail|
        taste_body_total << order_detail.item.taste_body
      end
    end
    @taste_body_average = taste_body_total.sum / taste_body_total.length.to_f
    # p '-----------------'
    # pp @taste_body_average

  end
end
