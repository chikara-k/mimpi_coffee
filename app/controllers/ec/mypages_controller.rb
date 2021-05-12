class Ec::MypagesController < ApplicationController
  #? before_action :authenticate_customer!
  
  def show
    @customer = Customer.find(params[:id])
  end
end
