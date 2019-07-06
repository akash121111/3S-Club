require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_index_url
    assert_response :success
  end

  test "should get sign_up" do
    get user_sign_up_url
    assert_response :success
  end

  test "should get log_in" do
    get user_log_in_url
    assert_response :success
  end

end
