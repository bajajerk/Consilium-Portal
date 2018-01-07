require 'test_helper'

class ShatranjsControllerTest < ActionController::TestCase
  setup do
    @shatranj = shatranjs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shatranjs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shatranj" do
    assert_difference('Shatranj.count') do
      post :create, shatranj: { name: @shatranj.name, user_id: @shatranj.user_id }
    end

    assert_redirected_to shatranj_path(assigns(:shatranj))
  end

  test "should show shatranj" do
    get :show, id: @shatranj
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shatranj
    assert_response :success
  end

  test "should update shatranj" do
    patch :update, id: @shatranj, shatranj: { name: @shatranj.name, user_id: @shatranj.user_id }
    assert_redirected_to shatranj_path(assigns(:shatranj))
  end

  test "should destroy shatranj" do
    assert_difference('Shatranj.count', -1) do
      delete :destroy, id: @shatranj
    end

    assert_redirected_to shatranjs_path
  end
end
