require 'test_helper'

class BcasesControllerTest < ActionController::TestCase
  setup do
    @bcase = bcases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bcases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bcase" do
    assert_difference('Bcase.count') do
      post :create, bcase: { name: @bcase.name, user_id: @bcase.user_id }
    end

    assert_redirected_to bcase_path(assigns(:bcase))
  end

  test "should show bcase" do
    get :show, id: @bcase
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bcase
    assert_response :success
  end

  test "should update bcase" do
    patch :update, id: @bcase, bcase: { name: @bcase.name, user_id: @bcase.user_id }
    assert_redirected_to bcase_path(assigns(:bcase))
  end

  test "should destroy bcase" do
    assert_difference('Bcase.count', -1) do
      delete :destroy, id: @bcase
    end

    assert_redirected_to bcases_path
  end
end
