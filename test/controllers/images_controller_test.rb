require 'test_helper'

class ImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get destroy" do
    get images_destroy_url
    assert_response :success
  end

end
