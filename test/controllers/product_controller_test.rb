require "test_helper"

class ProductControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get product_index_url
    assert_response :success
  end

  test "should get creat" do
    get product_creat_url
    assert_response :success
  end

  test "should get new" do
    get product_new_url
    assert_response :success
  end

  test "should get delete" do
    get product_delete_url
    assert_response :success
  end
end
