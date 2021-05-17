require 'rails_helper'

RSpec.describe 'Orderモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    subject { order.valid? }

    let!(:customer) { create(:customer) }
    let(:order) { build(:order) }

    context 'PostalCodeカラム' do
      it '空欄の場合はエラーが出る' do
        order.postal_code = ''
        order.valid?
        expect(order.errors[:postal_code]).to include("を入力してください")
      end
    end

    context 'Addressカラム' do
      it '空欄の場合はエラーが出る' do
        order.address = ''
        order.valid?
        expect(order.errors[:address]).to include("を入力してください")
      end
    end

    # context 'Nameカラム' do
    #   it '空欄の場合はエラーが出る' do
    #     order.address = ''
    #     order.valid?
    #     expect(order.errors[:name]).to include("を入力してください")
    #   end
    # end

    context 'ShippingCostカラム' do
      it '空欄の場合はエラーが出る' do
        order.shipping_cost = ''
        order.valid?
        expect(order.errors[:shipping_cost]).to include("を入力してください")
      end
    end

    context 'TotalPaymentカラム' do
      it '空欄の場合はエラーが出る' do
        order.total_payment = ''
        order.valid?
        expect(order.errors[:total_payment]).to include("を入力してください")
      end
    end

    context 'PaymentMethodカラム' do
      it '空欄の場合はエラーが出る' do
        order.payment_method = ''
        order.valid?
        expect(order.errors[:payment_method]).to include("を入力してください")
      end
    end

    context 'OrderStatusカラム' do
      it '空欄の場合はエラーが出る' do
        order.order_status = ''
        order.valid?
        expect(order.errors[:order_status]).to include("を入力してください")
      end
    end
  end

  describe 'アソシエーションのテスト' do
    context '1:Nのモデルとの関係' do
      it 'OrderDetailモデルとの関係' do
        expect(Order.reflect_on_association(:order_details).macro).to eq :has_many
      end
    end

    context 'N:1のモデルとの関係' do
      it 'Customerモデルとの関係' do
        expect(Order.reflect_on_association(:customer).macro).to eq :belongs_to
      end
    end
  end
end