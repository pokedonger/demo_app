require 'test_helper'

class FormControllerTest < ActionController::TestCase
  test "should get registration" do
    get :registration
    assert_response :success
  end

  test "should get registration_confirmation" do
    get :registration_confirmation
    assert_response :success
  end

end
