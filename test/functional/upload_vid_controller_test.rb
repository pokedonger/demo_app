require 'test_helper'

class UploadVidControllerTest < ActionController::TestCase
  test "should get upload" do
    get :upload
    assert_response :success
  end

  test "should get upload_confirmation" do
    get :upload_confirmation
    assert_response :success
  end

end
