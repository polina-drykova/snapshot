require 'test_helper'

class CameraphotosControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get cameraphotos_create_url
    assert_response :success
  end

end
