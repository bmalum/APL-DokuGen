require 'test_helper'

class EndDocumentationsControllerTest < ActionController::TestCase
  setup do
    @end_documentation = end_documentations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:end_documentations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create end_documentation" do
    assert_difference('EndDocumentation.count') do
      post :create, end_documentation: { cd: @end_documentation.cd, copies: @end_documentation.copies, created_by: @end_documentation.created_by, language: @end_documentation.language, printed_at: @end_documentation.printed_at }
    end

    assert_redirected_to end_documentation_path(assigns(:end_documentation))
  end

  test "should show end_documentation" do
    get :show, id: @end_documentation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @end_documentation
    assert_response :success
  end

  test "should update end_documentation" do
    patch :update, id: @end_documentation, end_documentation: { cd: @end_documentation.cd, copies: @end_documentation.copies, created_by: @end_documentation.created_by, language: @end_documentation.language, printed_at: @end_documentation.printed_at }
    assert_redirected_to end_documentation_path(assigns(:end_documentation))
  end

  test "should destroy end_documentation" do
    assert_difference('EndDocumentation.count', -1) do
      delete :destroy, id: @end_documentation
    end

    assert_redirected_to end_documentations_path
  end
end
