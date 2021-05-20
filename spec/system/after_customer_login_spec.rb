require 'rails_helper'

describe '[ユーザログイン後のテスト]' do
  let(:customer) { create(:customer) }
  let!(:other_customer) { create(:customer) }
  let!(:item) { create(:item) }


  before do
    visit new_customer_session_path
    fill_in 'customer[email]', with: customer.email
    fill_in 'customer[password]', with: customer.password
    click_button 'ログイン'
  end

  describe 'ヘッダーのテスト: ログインしている場合' do
    context 'リンクの内容を確認' do
      subject { current_path }

      it 'みんぴを知るを押すと、Aboutページに遷移する' do
        about_link = find_all('a')[1].native.inner_text
        about_link = about_link.gsub(/\n/, '').gsub(/\A\s*/, '').gsub(/\s*\Z/, '')
        click_link about_link
        is_expected.to eq '/about'
      end

      it 'マイページを押すと、ユーザーのマイページに遷移する' do
        mypage_link = find_all('a')[2].native.inner_text
        mypage_link = mypage_link.gsub(/\n/, '').gsub(/\A\s*/, '').gsub(/\s*\Z/, '')
        click_link mypage_link
        is_expected.to eq '/ec/mypages/' + customer.id.to_s
      end

      it 'コーヒー豆を押すと、商品一覧ページに遷移する' do
        items_link = find_all('a')[3].native.inner_text
        items_link = items_link.gsub(/\n/, '').gsub(/\A\s*/, '').gsub(/\s*\Z/, '')
        click_link items_link
        is_expected.to eq '/ec/items'
      end

      it 'カートを押すと、カート内一覧ページに遷移する' do
        cart_items_link = find_all('a')[4].native.inner_text
        cart_items_link = cart_items_link.gsub(/\n/, '').gsub(/\A\s*/, '').gsub(/\s*\Z/, '')
        click_link cart_items_link
        is_expected.to eq '/ec/cart_items'
      end
    end
  end
end