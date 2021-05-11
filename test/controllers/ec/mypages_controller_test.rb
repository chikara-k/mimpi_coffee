require 'test_helper'

class Ec::MypagesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get ec_mypages_show_url
    assert_response :success
  end

end
