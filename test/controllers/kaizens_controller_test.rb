require 'test_helper'

class KaizensControllerTest < ActionController::TestCase
  setup do
    @kaizen = kaizens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kaizens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kaizen" do
    assert_difference('Kaizen.count') do
      post :create, kaizen: { name: @kaizen.name, user_id: @kaizen.user_id }
    end

    assert_redirected_to kaizen_path(assigns(:kaizen))
  end

  test "should show kaizen" do
    get :show, id: @kaizen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kaizen
    assert_response :success
  end

  test "should update kaizen" do
    patch :update, id: @kaizen, kaizen: { name: @kaizen.name, user_id: @kaizen.user_id }
    assert_redirected_to kaizen_path(assigns(:kaizen))
  end

  test "should destroy kaizen" do
    assert_difference('Kaizen.count', -1) do
      delete :destroy, id: @kaizen
    end

    assert_redirected_to kaizens_path
  end
end
