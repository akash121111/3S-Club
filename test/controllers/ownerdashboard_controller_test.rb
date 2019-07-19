require 'test_helper'

class OwnerdashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ownerdashboard_index_url
    assert_response :success
  end

  test "should get new" do
    get ownerdashboard_new_url
    assert_response :success
  end

  test "should get show" do
    get ownerdashboard_show_url
    assert_response :success
  end

  test "should get destroy" do
    get ownerdashboard_destroy_url
    assert_response :success
  end

end
