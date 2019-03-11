require 'test_helper'

class BootAppsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get boot_apps_index_url
    assert_response :success
  end

  test "should get create" do
    get boot_apps_create_url
    assert_response :success
  end

  test "should get edit" do
    get boot_apps_edit_url
    assert_response :success
  end

  test "should get update" do
    get boot_apps_update_url
    assert_response :success
  end

  test "should get delete" do
    get boot_apps_delete_url
    assert_response :success
  end

end
