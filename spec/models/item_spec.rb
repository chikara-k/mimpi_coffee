require 'rails_helper'

RSpec.describe 'Itemモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    subject { item.valid? }
    
    let(:item) { build(:item) }

    context 'Nameカラム' do
      it '空欄の場合はエラーが出る' do
        item.name = ''
        item.valid?
        expect(item.errors[:name]).to include("を入力してください")
      end
    end

    context 'Imageカラム' do
      it '空欄の場合はエラーが出る' do
        item.image = ''
        item.valid?
        expect(item.errors[:image]).to include("を入力してください")
      end
    end

    # context 'RoastingLevelカラム' do
    #   it '空欄の場合はエラーが出る' do
    #     item.image = ''
    #     item.valid?
    #     expect(item.errors[:roasting_level]).to include("を入力してください")
    #   end
    # end

    context 'Priceカラム' do
      it '空欄の場合はエラーが出る' do
        item.price = ''
        item.valid?
        expect(item.errors[:price]).to include("を入力してください")
      end
    end

    context 'Is_salesカラム' do
      it '空欄の場合はエラーが出る' do
        item.is_sales = ''
        item.valid?
        expect(item.errors[:is_sales]).to include("は一覧にありません")
      end
    end
  end

  describe 'アソシエーションのテスト' do
    context '1:Nのモデルとの関係' do
      it 'CartItemモデルとの関係' do
        expect(Item.reflect_on_association(:cart_items).macro).to eq :has_many
      end

      it 'Favoriteモデルとの関連' do
        expect(Item.reflect_on_association(:favorites).macro).to eq :has_many
      end

      it 'Order_detailsモデルとの関連' do
        expect(Item.reflect_on_association(:order_details).macro).to eq :has_many
      end
    end

    context 'N:1のモデルとの関係' do
      it 'Genreモデルとの関係' do
        expect(Item.reflect_on_association(:genre).macro).to eq :belongs_to
      end
    end
  end
end