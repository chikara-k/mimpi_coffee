require 'test_helper'

class Ec::CartItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ec_cart_items_index_url
    assert_response :success
  end

end
