require 'test_helper'

class OwnerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get owner_index_url
    assert_response :success
  end

  test "should get signup" do
    get owner_signup_url
    assert_response :success
  end

  test "should get login" do
    get owner_login_url
    assert_response :success
  end

end
