require "test_helper"

class CustomerListControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get customer_list_index_url
    assert_response :success
  end

  test "should get alphabetized" do
    get customer_list_alphabetized_url
    assert_response :success
  end

  test "should get missing_email" do
    get customer_list_missing_email_url
    assert_response :success
  end
end
