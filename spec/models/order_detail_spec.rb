require 'rails_helper'

RSpec.describe 'Orderモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    subject { order_detail.valid? }

    let!(:order) { create(:order) }
    let!(:item) { create(:item) }
    let(:order_detail) { build(:order_detail) }

    context 'Amountカラム' do
      it '空欄の場合はエラーが出る' do
        order_detail.amount = ''
        order_detail.valid?
        expect(order_detail.errors[:amount]).to include("を入力してください")
      end
    end

    context 'カラム' do
      it '空欄の場合はエラーが出る' do
        order_detail.subtotal = ''
        order_detail.valid?
        expect(order_detail.errors[:subtotal]).to include("を入力してください")
      end
    end
  end

  describe 'アソシエーションのテスト' do
    context 'N:1のモデルとの関係' do
      it 'Orderモデルとの関係' do
        expect(OrderDetail.reflect_on_association(:order).macro).to eq :belongs_to
      end

      it 'Itemモデルとの関係' do
        expect(OrderDetail.reflect_on_association(:item).macro).to eq :belongs_to
      end
    end
  end
end