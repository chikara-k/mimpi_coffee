class Ec::MypagesController < ApplicationController
  before_action :authenticate_customer!

  def show
    if current_customer.id.to_s == params[:id]
      @customer = Customer.find(params[:id])
    else
      redirect_to customers_sign_in_path
    end
  end
end
