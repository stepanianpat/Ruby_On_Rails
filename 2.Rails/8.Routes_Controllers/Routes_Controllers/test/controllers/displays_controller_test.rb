require 'test_helper'

class DisplaysControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get say" do
    get :say
    assert_response :success
  end

  test "should get times" do
    get :times
    assert_response :success
  end

end
