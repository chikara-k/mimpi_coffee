class Ec::CustomersController < ApplicationController
  #? before_action :authenticate_customer!

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
       flash.now[:notice] = "登録情報が編集されました"
      redirect_to ec_customer_path(@customer.id)
    else
      render "edit"
    end
  end

  def confirm
    @customer = Customer.find(params[:id])
  end

  def hide
    @cusromer = Customer.find(current_customer.id)
    @cusromer.update(is_active: false)
    p @cusromer
    reset_session
    flash[:notice] = "退会しました。"
    redirect_to root_path
  end

  private

  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana,
      :postal_code, :address, :email, :telephone_number, :is_active)
  end
end
