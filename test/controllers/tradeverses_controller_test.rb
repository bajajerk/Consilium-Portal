require 'test_helper'

class TradeversesControllerTest < ActionController::TestCase
  setup do
    @tradeverse = tradeverses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tradeverses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tradeverse" do
    assert_difference('Tradeverse.count') do
      post :create, tradeverse: { name: @tradeverse.name, user_id: @tradeverse.user_id }
    end

    assert_redirected_to tradeverse_path(assigns(:tradeverse))
  end

  test "should show tradeverse" do
    get :show, id: @tradeverse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tradeverse
    assert_response :success
  end

  test "should update tradeverse" do
    patch :update, id: @tradeverse, tradeverse: { name: @tradeverse.name, user_id: @tradeverse.user_id }
    assert_redirected_to tradeverse_path(assigns(:tradeverse))
  end

  test "should destroy tradeverse" do
    assert_difference('Tradeverse.count', -1) do
      delete :destroy, id: @tradeverse
    end

    assert_redirected_to tradeverses_path
  end
end
