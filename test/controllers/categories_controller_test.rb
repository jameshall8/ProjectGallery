require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get categories_new_url
    assert_response :success
  end

  test "should get create" do
    get categories_create_url
    assert_response :success
  end

  test "should get dit" do
    get categories_dit_url
    assert_response :success
  end

  test "should get update" do
    get categories_update_url
    assert_response :success
  end

  test "should get delete" do
    get categories_delete_url
    assert_response :success
  end

  test "should get show" do
    get categories_show_url
    assert_response :success
  end
end
