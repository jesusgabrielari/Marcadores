require 'test_helper'

class ArchetypesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get archetypes_new_url
    assert_response :success
  end

  test "should get create" do
    get archetypes_create_url
    assert_response :success
  end

  test "should get show" do
    get archetypes_show_url
    assert_response :success
  end

  test "should get edit" do
    get archetypes_edit_url
    assert_response :success
  end

  test "should get update" do
    get archetypes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get archetypes_destroy_url
    assert_response :success
  end

end
