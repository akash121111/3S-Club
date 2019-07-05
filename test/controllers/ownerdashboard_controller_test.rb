require 'test_helper'

class OwnerdashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ownerdashboard_index_url
    assert_response :success
  end

end
