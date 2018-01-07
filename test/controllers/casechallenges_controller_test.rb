require 'test_helper'

class CasechallengesControllerTest < ActionController::TestCase
  setup do
    @casechallenge = casechallenges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:casechallenges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create casechallenge" do
    assert_difference('Casechallenge.count') do
      post :create, casechallenge: { name: @casechallenge.name, user_id: @casechallenge.user_id }
    end

    assert_redirected_to casechallenge_path(assigns(:casechallenge))
  end

  test "should show casechallenge" do
    get :show, id: @casechallenge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @casechallenge
    assert_response :success
  end

  test "should update casechallenge" do
    patch :update, id: @casechallenge, casechallenge: { name: @casechallenge.name, user_id: @casechallenge.user_id }
    assert_redirected_to casechallenge_path(assigns(:casechallenge))
  end

  test "should destroy casechallenge" do
    assert_difference('Casechallenge.count', -1) do
      delete :destroy, id: @casechallenge
    end

    assert_redirected_to casechallenges_path
  end
end
