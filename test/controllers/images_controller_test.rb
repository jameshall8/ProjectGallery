require "test_helper"

class ImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get images_new_url
    assert_response :success
  end

  test "should get create" do
    get images_create_url
    assert_response :success
  end

  test "should get delete" do
    get images_delete_url
    assert_response :success
  end

  test "should get index" do
    get images_index_url
    assert_response :success
  end
end
