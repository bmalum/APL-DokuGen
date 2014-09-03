require 'test_helper'

class ContactpeopleControllerTest < ActionController::TestCase
  setup do
    @contactperson = contactpeople(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contactpeople)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contactperson" do
    assert_difference('Contactperson.count') do
      post :create, contactperson: { customer_id: @contactperson.customer_id, fax: @contactperson.fax, mail: @contactperson.mail, name: @contactperson.name, order_id: @contactperson.order_id, tel: @contactperson.tel }
    end

    assert_redirected_to contactperson_path(assigns(:contactperson))
  end

  test "should show contactperson" do
    get :show, id: @contactperson
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contactperson
    assert_response :success
  end

  test "should update contactperson" do
    patch :update, id: @contactperson, contactperson: { customer_id: @contactperson.customer_id, fax: @contactperson.fax, mail: @contactperson.mail, name: @contactperson.name, order_id: @contactperson.order_id, tel: @contactperson.tel }
    assert_redirected_to contactperson_path(assigns(:contactperson))
  end

  test "should destroy contactperson" do
    assert_difference('Contactperson.count', -1) do
      delete :destroy, id: @contactperson
    end

    assert_redirected_to contactpeople_path
  end
end
