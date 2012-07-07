require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get hotels" do
    get :hotels
    assert_response :success
  end

  test "should get schedule" do
    get :schedule
    assert_response :success
  end

  test "should get directions" do
    get :directions
    assert_response :success
  end

  test "should get registry" do
    get :registry
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

end
