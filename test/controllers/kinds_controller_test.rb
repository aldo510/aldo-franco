require "test_helper"

class KindsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kinds_index_url
    assert_response :success
  end

  test "should get show" do
    get kinds_show_url
    assert_response :success
  end

  test "should get edit" do
    get kinds_edit_url
    assert_response :success
  end

  test "should get update" do
    get kinds_update_url
    assert_response :success
  end
end
