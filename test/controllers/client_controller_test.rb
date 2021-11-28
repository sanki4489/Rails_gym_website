require "test_helper"

class ClientControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get client_new_url
    assert_response :success
  end

  test "should get index" do
    get client_index_url
    assert_response :success
  end
end
