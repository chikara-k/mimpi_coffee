require 'rails_helper'

describe '[管理者ログイン後のテスト]' do
  let(:admin) { create(:admin) }

  before do
    visit new_admin_session_path
    fill_in 'admin[email]', with: admin.email
    fill_in 'admin[password]', with: admin.password
    click_button 'ログイン'
  end

  describe 'ヘッダーのテスト: Adminログインしている場合' do
    context 'リンク内容を確認' do
      subject { current_path }

      it 'コーヒー豆を押すと、商品一覧ページに遷移する' do
        items_link = find_all('a')[1].native.inner_text
        items_link = items_link.gsub(/\n/, '').gsub(/\A\s*/, '').gsub(/\s*\Z/, '')
        click_link items_link
        is_expected.to eq '/admin/items'
      end

      it '会員一覧を押すと、会員一覧ページに遷移する' do
        customer_link = find_all('a')[2].native.inner_text
        customer_link = customer_link.gsub(/\n/, '').gsub(/\A\s*/, '').gsub(/\s*\Z/, '')
        click_link customer_link
        is_expected.to eq '/admin/customers'
      end

      it '注文一覧を押すと、注文一覧ページに遷移する' do
        order_link = find_all('a')[3].native.inner_text
        order_link = order_link.gsub(/\n/, '').gsub(/\A\s*/, '').gsub(/\s*\Z/, '')
        click_link order_link
        is_expected.to eq '/admin/orders'
      end

      it 'ジャンル一覧を押すと、ジャンル一覧ページに遷移する' do
        genre_link = find_all('a')[4].native.inner_text
        genre_link = genre_link.gsub(/\n/, '').gsub(/\A\s*/, '').gsub(/\s*\Z/, '')
        click_link genre_link
        is_expected.to eq '/admin/genres'
      end
    end
  end
end