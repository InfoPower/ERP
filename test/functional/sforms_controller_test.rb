require 'test_helper'

class SformsControllerTest < ActionController::TestCase
  test "should get MNT001" do
    get :MNT001
    assert_response :success
  end

  test "should get MNT002" do
    get :MNT002
    assert_response :success
  end

  test "should get BOM001" do
    get :BOM001
    assert_response :success
  end

  test "should get ACR001CRM001" do
    get :ACR001CRM001
    assert_response :success
  end

end
