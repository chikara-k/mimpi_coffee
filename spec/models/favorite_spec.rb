require 'rails_helper'

RSpec.describe 'Favoriteモデルのテスト', type: :model do
  describe 'アソシエーションのテスト' do
    subject { favorite.valid? }

    context 'N:1のモデルとの関係' do
      it 'Customerモデルとの関係' do
        expect(Favorite.reflect_on_association(:customer).macro).to eq :belongs_to
      end

      it 'Itemモデルとの関係' do
        expect(Favorite.reflect_on_association(:item).macro).to eq :belongs_to
      end
    end
  end
end
