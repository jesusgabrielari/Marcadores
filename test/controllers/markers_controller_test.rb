require 'test_helper'

class MarkersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get markers_new_url
    assert_response :success
  end

  test "should get create" do
    get markers_create_url
    assert_response :success
  end

  test "should get show" do
    get markers_show_url
    assert_response :success
  end

  test "should get edit" do
    get markers_edit_url
    assert_response :success
  end

  test "should get update" do
    get markers_update_url
    assert_response :success
  end

  test "should get destroy" do
    get markers_destroy_url
    assert_response :success
  end

end
