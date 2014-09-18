require 'test_helper'

class DokuIDsControllerTest < ActionController::TestCase
  setup do
    @doku_id = doku_ids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doku_ids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doku_id" do
    assert_difference('DokuId.count') do
      post :create, doku_id: { dokument_id: @doku_id.dokument_id, w_number_id: @doku_id.w_number_id }
    end

    assert_redirected_to doku_id_path(assigns(:doku_id))
  end

  test "should show doku_id" do
    get :show, id: @doku_id
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doku_id
    assert_response :success
  end

  test "should update doku_id" do
    patch :update, id: @doku_id, doku_id: { dokument_id: @doku_id.dokument_id, w_number_id: @doku_id.w_number_id }
    assert_redirected_to doku_id_path(assigns(:doku_id))
  end

  test "should destroy doku_id" do
    assert_difference('DokuId.count', -1) do
      delete :destroy, id: @doku_id
    end

    assert_redirected_to doku_ids_path
  end
end
