require 'test_helper'

class AdminsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_index_url
    assert_response :success
  end

  test "should get login" do
    get admins_login_url
    assert_response :success
  end

end
