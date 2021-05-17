require 'rails_helper'

RSpec.describe 'Contactモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    subject { contact.valid? }

    let(:contact) { build(:contact) }

    context 'nameのカラム' do
      it '空欄でないこと' do
        contact.name = ''
        is_expected.to eq false
      end
      it '空欄の場合はエラーが出る' do
        contact.name = ''
        contact.valid?
        expect(contact.errors[:name]).to include("を入力してください")
      end
    end

    context 'nameのカラム' do
      it '空欄でないこと' do
        contact.email = ''
        is_expected.to eq false
      end
      it '空欄の場合はエラーが出る' do
        contact.email = ''
        contact.valid?
        expect(contact.errors[:email]).to include("を入力してください")
      end
    end

    context 'nameのカラム' do
      it '空欄でないこと' do
        contact.message = ''
        is_expected.to eq false
      end
      it '空欄の場合はエラーが出る' do
        contact.message = ''
        contact.valid?
        expect(contact.errors[:message]).to include("を入力してください")
      end
    end

  end
end