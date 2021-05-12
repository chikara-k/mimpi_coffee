require 'test_helper'

class Ec::AddressesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ec_addresses_index_url
    assert_response :success
  end

end
