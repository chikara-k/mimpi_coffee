require 'rails_helper'

RSpec.describe 'CartItemモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    subject { cart_item.valid? }

    let(:customer) { create(:customer) }
    let(:item) { create(:item) }
    let!(:cart_item) { build(:cart_item) }

    context 'amountカラム' do
      it '空欄でないこと' do
        cart_item.amount = ''
        is_expected.to eq false
      end
    end

    context 'item_idカラム' do
      it '空欄でないこと' do
        cart_item.item_id = ''
        is_expected.to eq false
      end
    end

    context 'customer_idカラム' do
      it '空欄でないこと' do
        cart_item.customer_id = ''
        is_expected.to eq false
      end
    end
  end

  describe 'アソシエーション' do
    context 'N:1のモデルの関係' do
      it 'Customerモデルとの関係' do
        expect(CartItem.reflect_on_association(:customer).macro).to eq :belongs_to
      end

      it 'Itemモデルとの関係' do
        expect(CartItem.reflect_on_association(:item).macro).to eq :belongs_to
      end
    end
  end
end