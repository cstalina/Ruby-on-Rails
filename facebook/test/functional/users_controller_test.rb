require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get add_friend" do
    get :add_friend
    assert_response :success
  end

end
