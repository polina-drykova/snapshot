require 'test_helper'

class CamerasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cameras_index_url
    assert_response :success
  end

  test "should get new" do
    get cameras_new_url
    assert_response :success
  end

  test "should get create" do
    get cameras_create_url
    assert_response :success
  end

  test "should get show" do
    get cameras_show_url
    assert_response :success
  end

  test "should get edit" do
    get cameras_edit_url
    assert_response :success
  end

  test "should get update" do
    get cameras_update_url
    assert_response :success
  end

  test "should get destroy" do
    get cameras_destroy_url
    assert_response :success
  end

end
