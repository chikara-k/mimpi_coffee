require 'test_helper'

class Ec::ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ec_items_index_url
    assert_response :success
  end

  test "should get show" do
    get ec_items_show_url
    assert_response :success
  end

end
