require "test_helper"

class DiplomasControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get diplomas_create_url
    assert_response :success
  end
end
