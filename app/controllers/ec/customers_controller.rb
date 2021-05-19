class Ec::CustomersController < ApplicationController
  before_action :authenticate_customer!
  before_action :ensure_normal_customer, only: %i[edit hide]

  def show
    if current_customer.id.to_s == params[:id]
      @customer = Customer.find(params[:id])
    else
      redirect_to customers_sign_in_path
    end
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      flash[:success] = "登録情報が編集されました"
      redirect_to ec_customer_path(@customer.id)
    else
      render "edit"
    end
  end

  def confirm
    @customer = Customer.find(params[:id])
  end

  def hide
    @customer = Customer.find(current_customer.id)
    @customer.update(is_active: false)
    p @customer
    reset_session
    flash[:notice] = "退会しました。"
    redirect_to root_path
  end

  private

  def customer_params
    params.require(:customer).permit(:last_name,
                                     :first_name,
                                     :last_name_kana,
                                     :first_name_kana,
                                     :postal_code,
                                     :address,
                                     :email,
                                     :telephone_number,
                                     :is_active)
  end

  def ensure_normal_customer
    if current_customer.email == 'guest@example.com'
      redirect_to root_path, alert: 'ゲストユーザーの更新・削除はできません。'
    end
  end
end
