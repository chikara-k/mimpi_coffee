require 'test_helper'

class Ec::CustomersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get ec_customers_show_url
    assert_response :success
  end

  test "should get edit" do
    get ec_customers_edit_url
    assert_response :success
  end

end
