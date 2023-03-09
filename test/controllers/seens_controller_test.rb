require "test_helper"

class SeensControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get seens_index_url
    assert_response :success
  end

  test "should get create" do
    get seens_create_url
    assert_response :success
  end
end
