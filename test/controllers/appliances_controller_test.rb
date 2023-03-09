require "test_helper"

class AppliancesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get appliances_index_url
    assert_response :success
  end

  test "should get create" do
    get appliances_create_url
    assert_response :success
  end

  test "should get destroy" do
    get appliances_destroy_url
    assert_response :success
  end
end
