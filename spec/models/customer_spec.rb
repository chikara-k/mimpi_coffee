require 'rails_helper'

RSpec.describe 'Customerモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    subject { customer.valid? }

    let!(:other_customer) { create(:customer) }
    let(:customer) { build(:customer) }

    context 'last_nameカラム' do
      it '空欄でないこと' do
        customer.last_name = ''
        is_expected.to eq false
      end
      it '空欄の場合はエラーが出る' do
        customer.last_name = ''
        customer.valid?
        expect(customer.errors[:last_name]).to include("を入力してください")
      end
    end

    context 'first_nameカラム' do
      it '空欄でないこと' do
        customer.first_name = ''
        is_expected.to eq false
      end
      it '空欄の場合はエラーが出る' do
        customer.first_name = ''
        customer.valid?
        expect(customer.errors[:first_name]).to include("を入力してください")
      end
    end

    context 'last_name_kana_nameカラム' do
      it '空欄でないこと' do
        customer.last_name_kana = ''
        is_expected.to eq false
      end
      it '空欄の場合はエラーが出る' do
        customer.last_name_kana = ''
        customer.valid?
        expect(customer.errors[:last_name_kana]).to include("を入力してください")
      end
    end

    context 'last_name_kana_nameカラム' do
      it '空欄でないこと' do
        customer.first_name_kana = ''
        is_expected.to eq false
      end
      it '空欄の場合はエラーが出る' do
        customer.first_name_kana = ''
        customer.valid?
        expect(customer.errors[:first_name_kana]).to include("を入力してください")
      end
    end

    context 'emailカラム' do
      it '空欄でないこと' do
        customer.email = ''
        is_expected.to eq false
      end
      it '空欄の場合はエラーが出る' do
        customer.email = ''
        customer.valid?
        expect(customer.errors[:email]).to include("を入力してください")
      end
      it '一意であること' do
        customer.email = 'testmail@test.com'
        customer.save
        other_customer.email = 'testmail@test.com'
        other_customer.save
        other_customer.valid?
        expect(other_customer).not_to be_valid
      end
      it '一意でない場合はエラーが出る' do
        customer.email = 'testmail@test.com'
        customer.save
        other_customer.email = 'testmail@test.com'
        other_customer.save
        other_customer.valid?
        expect(other_customer.errors[:email]).to include("はすでに存在します")
      end
    end

    context 'postal_codeカラム' do
      it '空欄でないこと' do
        customer.postal_code = ''
        is_expected.to eq false
      end
      it '空欄の場合はエラーが出る' do
        customer.postal_code = ''
        customer.valid?
        expect(customer.errors[:postal_code]).to include("を入力してください")
      end
    end

    context 'addressカラム' do
      it '空欄でないこと' do
        customer.address = ''
        is_expected.to eq false
      end
      it '空欄の場合はエラーが出る' do
        customer.address = ''
        customer.valid?
        expect(customer.errors[:address]).to include("を入力してください")
      end
    end

    context 'telephone_numberカラム' do
      it '空欄でないこと' do
        customer.telephone_number = ''
        is_expected.to eq false
      end
      it '空欄の場合はエラーが出る' do
        customer.telephone_number = ''
        customer.valid?
        expect(customer.errors[:telephone_number]).to include("を入力してください")
      end
    end

    context 'is_activeカラム' do
      it '空欄でないこと' do
        customer.is_active = ''
        is_expected.to eq false
      end
    end

    context 'passwordカラム' do
      it '空欄でないこと' do
        customer.password = ''
        is_expected.to eq false
      end
      it '空欄の場合はエラーが出る' do
        customer.password = ''
        customer.valid?
        expect(customer.errors[:password]).to include("を入力してください")
      end
      it '6文字以上であること' do
        customer.password = Faker::Lorem.characters(number: 1)
        is_expected.to eq false
      end
      it '６文字未満の場合はエラーが出る' do
        customer.password = Faker::Lorem.characters(number: 1)
        customer.valid?
        expect(customer.errors[:password]).to include("は6文字以上で入力してください")
      end
      it 'パスワードが不一致だとエラーが出る' do
        customer.password = 'password1'
        customer.password_confirmation = 'password2'
        customer.valid?
        expect(customer.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
      end
    end
  end

  describe 'アソシエーションのテスト' do
    context '1:Nのモデルとの関係' do
      it 'CartItemモデルとの関係' do
        expect(Customer.reflect_on_association(:cart_items).macro).to eq :has_many
      end
    end
    
    context '1:Nのモデルとの関係' do
      it 'Addressモデルとの関係' do
        expect(Customer.reflect_on_association(:addresses).macro).to eq :has_many
      end
    end
    
    context '1:Nのモデルとの関係' do
      it 'Orderモデルとの関係' do
        expect(Customer.reflect_on_association(:orders).macro).to eq :has_many
      end
    end
    
    context '1:Nのモデルとの関係' do
      it 'Favoritesモデルとの関係' do
        expect(Customer.reflect_on_association(:favorites).macro).to eq :has_many
      end
    end
  end
end