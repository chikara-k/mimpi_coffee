require 'rails_helper'

describe '[ユーザログイン前のテスト]' do
  describe 'トップページのテスト' do
    before do
      visit root_path
    end

    context '表示内容の確認' do
      it 'URLが正しい' do
        expect(current_path).to eq '/'
      end
    end
  end

  describe 'アバウトページのテスト' do
    before do
      visit '/about'
    end

    context '表示内容の確認' do
      it 'URLが正しい' do
        expect(current_path).to eq '/about'
      end
    end
  end

  describe 'ヘッダーのテスト: ログインしていない場合' do
    before do
      visit root_path
    end

    context '表示内容の確認' do
      it 'タイトルが表示される' do
        expect(page).to have_content 'さぁ、心ふるえる一杯を。'
      end
    end

    context 'リンクの内容を確認' do
      subject { current_path }

      it 'aboutを押すと、アバウトページに遷移する' do
        about_link = find_all('a')[1].native.inner_text
        about_link = about_link.gsub(/\n/, '').gsub(/\A\s*/, '').gsub(/\s*\Z/, '')
        click_link about_link
        is_expected.to eq '/about'
      end

      it 'コーヒー豆を押すと、新規登録ページに遷移する' do
        sign_up_link = find_all('a')[2].native.inner_text
        sign_up_link = sign_up_link.gsub(/\n/, '').gsub(/\A\s*/, '').gsub(/\s*\Z/, '')
        click_link sign_up_link
        is_expected.to eq '/ec/items'
      end

      it '新規登録を押すと、新規登録ページに遷移する' do
        sign_up_link = find_all('a')[3].native.inner_text
        sign_up_link = sign_up_link.gsub(/\n/, '').gsub(/\A\s*/, '').gsub(/\s*\Z/, '')
        click_link sign_up_link
        is_expected.to eq '/customers/sign_up'
      end

      it 'ログインを押すと、新規登録ページに遷移する' do
        sign_up_link = find_all('a')[4].native.inner_text
        sign_up_link = sign_up_link.gsub(/\n/, '').gsub(/\A\s*/, '').gsub(/\s*\Z/, '')
        click_link sign_up_link
        is_expected.to eq '/customers/sign_in'
      end

      it 'ゲストログインを押すと、ゲストマイページに遷移する' do
        sign_up_link = find_all('a')[5].native.inner_text
        sign_up_link = sign_up_link.gsub(/\n/, '').gsub(/\A\s*/, '').gsub(/\s*\Z/, '')
        click_link sign_up_link
        is_expected.to eq '/ec/mypages/1'
      end
    end
  end

  describe 'ユーザ新規登録のテスト' do
    before do
      visit new_customer_registration_path
    end

    context '表示内容の確認' do
      it 'URLが正しい' do
        expect(current_path).to eq '/customers/sign_up'
      end

      it '「新規会員登録」と表示される' do
        expect(page).to have_content '新規会員登録'
      end

      it 'last_nameフォームが表示される' do
        expect(page).to have_field 'customer[last_name]'
      end
      it 'first_nameフォームが表示される' do
        expect(page).to have_field 'customer[first_name]'
      end
      it 'last_name_kanaフォームが表示される' do
        expect(page).to have_field 'customer[last_name_kana]'
      end
      it 'first_name_kana_nameフォームが表示される' do
        expect(page).to have_field 'customer[first_name_kana]'
      end
      it 'emailフォームが表示される' do
        expect(page).to have_field 'customer[email]'
      end
      it 'postal_codeフォームが表示される' do
        expect(page).to have_field 'customer[postal_code]'
      end
      it 'addressフォームが表示される' do
        expect(page).to have_field 'customer[address]'
      end
      it 'telephone_numberフォームが表示される' do
        expect(page).to have_field 'customer[telephone_number]'
      end
      it 'passwordフォームが表示される' do
        expect(page).to have_field 'customer[password]'
      end
      it 'password_confirmationフォームが表示される' do
        expect(page).to have_field 'customer[password_confirmation]'
      end
      it '新規登録ボタンが表示される' do
        expect(page).to have_button '新規登録'
      end
    end

    context '新規登録成功のテスト' do
      before do
        fill_in 'customer[last_name]', with: Faker::Lorem.characters(number: 5)
        fill_in 'customer[first_name]', with: Faker::Lorem.characters(number: 5)
        fill_in 'customer[last_name_kana]', with: Faker::Lorem.characters(number: 5)
        fill_in 'customer[first_name_kana]', with: Faker::Lorem.characters(number: 5)
        fill_in 'customer[email]', with: Faker::Internet.email
        fill_in 'customer[postal_code]', with: Faker::Lorem.characters(number: 7)
        fill_in 'customer[address]', with: Faker::Lorem.characters(number: 10)
        fill_in 'customer[telephone_number]', with: Faker::Lorem.characters(number: 11)
        fill_in 'customer[password]', with: 'password'
        fill_in 'customer[password_confirmation]', with: 'password'
      end

      it '正しく新規登録される' do
        expect { click_button '新規登録' }.to change(Customer.all, :count).by(1)
      end

      it '新規登録後のリダイレクト先が、マイページになっている' do
        click_button '新規登録'
        expect(current_path).to eq '/ec/mypages/1'
      end
    end

    describe 'ユーザログイン' do
      let(:customer) { create(:customer) }

      before do
        visit new_customer_session_path
      end

      context '表示内容の確認' do
        it 'URLが正しい' do
          expect(current_path).to eq '/customers/sign_in'
        end

        it '「ログイン」と表示される' do
          expect(page).to have_content 'ログイン'
        end

        it 'emailフォームが表示される' do
          expect(page).to have_field 'customer[email]'
        end

        it 'passwordフォームが表示される' do
          expect(page).to have_field 'customer[password]'
        end

        it 'ログインボタンが表示される' do
          expect(page).to have_button 'ログイン'
        end

        it 'nameフォームは表示されない' do
          expect(page).not_to have_field 'customer[first_name]'
        end
      end

      context 'ログイン成功のテスト' do
        before do
          fill_in 'customer[email]', with: customer.email
          fill_in 'customer[password]', with: customer.password
          click_button 'ログイン'
        end

        it 'ログイン後のリダイレクト先が、マイページになっている' do
          expect(current_path).to eq '/ec/mypages/1'
        end
      end

      context 'ログイン失敗のテスト' do
        before do
          fill_in 'customer[email]', with: ""
          fill_in 'customer[password]', with: ""
          click_button 'ログイン'
        end

        it 'ログインに失敗し、ログイン画面にリダイレクトされる' do
          expect(current_path).to eq '/customers/sign_in'
        end
      end
    end
    
    describe 'ログアウトのテスト' do
      let(:customer) { create(:customer) }
      
      before do
        visit new_customer_session_path
        fill_in 'customer[email]', with: customer.email
        fill_in 'customer[password]', with: customer.password
        click_button 'ログイン'
        logout_link = find_all('a')[5].native.inner_text
        logout_link = logout_link.gsub(/\n/, '').gsub(/\A\s*/, '').gsub(/\s*\Z/, '')
        click_link logout_link
      end
      
      context 'ログアウト機能のテスト' do
        it '正しくログアウトできている: ログアウト後のリダイレクト先においてtop画面へのリンクが存在する' do
          expect(page).to have_link '', href: '/'
        end
        it 'ログアウト後のリダイレクト先が、トップになっている' do
          expect(current_path).to eq '/'
        end
      end
    end
  end
end