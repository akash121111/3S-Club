require 'test_helper'

class MemberDashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get member_dashboard_dashboard_url
    assert_response :success
  end

  test "should get index" do
    get member_dashboard_index_url
    assert_response :success
  end

  test "should get new" do
    get member_dashboard_new_url
    assert_response :success
  end

  test "should get show" do
    get member_dashboard_show_url
    assert_response :success
  end

end
