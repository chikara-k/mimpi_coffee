require 'rails_helper'

RSpec.describe 'Genreモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    subject { genre.valid? }

    let(:genre) { create(:genre) }
    let(:other_genre) { create(:genre) }

    context 'nameカラム' do
      it '空だとエラーが出る' do
        genre.name = ''
        genre.valid?
        expect(genre.errors[:name]).to include("を入力してください")
      end

      it '一意であること' do
        genre.name = "テスト"
        genre.save
        other_genre.name = "テスト"
        other_genre.save
        other_genre.valid?
        expect(other_genre).not_to be_valid
      end

      it '一意であること' do
        genre.name = "テスト"
        genre.save
        other_genre.name = "テスト"
        other_genre.save
        other_genre.valid?
        expect(other_genre.errors[:name]).to include("はすでに存在します")
      end
    end
  end

  describe 'アソシエーションのテスト' do
    context '1:Nのモデルとの関係' do
      it 'Postモデルとの関係' do
        expect(Genre.reflect_on_association(:items).macro).to eq :has_many
      end
    end
  end
end