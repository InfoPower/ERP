require 'test_helper'

class UnitOfMeasureConversionsControllerTest < ActionController::TestCase
  setup do
    @unit_of_measure_conversion = unit_of_measure_conversions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unit_of_measure_conversions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unit_of_measure_conversion" do
    assert_difference('UnitOfMeasureConversion.count') do
      post :create, unit_of_measure_conversion: @unit_of_measure_conversion.attributes
    end

    assert_redirected_to unit_of_measure_conversion_path(assigns(:unit_of_measure_conversion))
  end

  test "should show unit_of_measure_conversion" do
    get :show, id: @unit_of_measure_conversion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unit_of_measure_conversion
    assert_response :success
  end

  test "should update unit_of_measure_conversion" do
    put :update, id: @unit_of_measure_conversion, unit_of_measure_conversion: @unit_of_measure_conversion.attributes
    assert_redirected_to unit_of_measure_conversion_path(assigns(:unit_of_measure_conversion))
  end

  test "should destroy unit_of_measure_conversion" do
    assert_difference('UnitOfMeasureConversion.count', -1) do
      delete :destroy, id: @unit_of_measure_conversion
    end

    assert_redirected_to unit_of_measure_conversions_path
  end
end
