require 'test_helper'

class ProfileControllerTest < ActionController::TestCase
  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get save" do
    get :save
    assert_response :success
  end

end
