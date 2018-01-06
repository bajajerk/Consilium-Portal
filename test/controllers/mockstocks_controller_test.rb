require 'test_helper'

class MockstocksControllerTest < ActionController::TestCase
  setup do
    @mockstock = mockstocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mockstocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mockstock" do
    assert_difference('Mockstock.count') do
      post :create, mockstock: { name: @mockstock.name, teamcount: @mockstock.teamcount, user_id: @mockstock.user_id }
    end

    assert_redirected_to mockstock_path(assigns(:mockstock))
  end

  test "should show mockstock" do
    get :show, id: @mockstock
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mockstock
    assert_response :success
  end

  test "should update mockstock" do
    patch :update, id: @mockstock, mockstock: { name: @mockstock.name, teamcount: @mockstock.teamcount, user_id: @mockstock.user_id }
    assert_redirected_to mockstock_path(assigns(:mockstock))
  end

  test "should destroy mockstock" do
    assert_difference('Mockstock.count', -1) do
      delete :destroy, id: @mockstock
    end

    assert_redirected_to mockstocks_path
  end
end
