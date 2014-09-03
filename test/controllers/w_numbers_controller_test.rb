require 'test_helper'

class WNumbersControllerTest < ActionController::TestCase
  setup do
    @w_number = w_numbers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:w_numbers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create w_number" do
    assert_difference('WNumber.count') do
      post :create, w_number: { darwing_number: @w_number.darwing_number, name: @w_number.name, number: @w_number.number, order_id: @w_number.order_id, standard: @w_number.standard, tag_number: @w_number.tag_number, year: @w_number.year }
    end

    assert_redirected_to w_number_path(assigns(:w_number))
  end

  test "should show w_number" do
    get :show, id: @w_number
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @w_number
    assert_response :success
  end

  test "should update w_number" do
    patch :update, id: @w_number, w_number: { darwing_number: @w_number.darwing_number, name: @w_number.name, number: @w_number.number, order_id: @w_number.order_id, standard: @w_number.standard, tag_number: @w_number.tag_number, year: @w_number.year }
    assert_redirected_to w_number_path(assigns(:w_number))
  end

  test "should destroy w_number" do
    assert_difference('WNumber.count', -1) do
      delete :destroy, id: @w_number
    end

    assert_redirected_to w_numbers_path
  end
end
