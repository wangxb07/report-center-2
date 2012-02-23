require 'test_helper'

class SalesChannelApisControllerTest < ActionController::TestCase
  setup do
    @sales_channel_api = sales_channel_apis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales_channel_apis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sales_channel_api" do
    assert_difference('SalesChannelApi.count') do
      post :create, :sales_channel_api => @sales_channel_api.attributes
    end

    assert_redirected_to sales_channel_api_path(assigns(:sales_channel_api))
  end

  test "should show sales_channel_api" do
    get :show, :id => @sales_channel_api
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sales_channel_api
    assert_response :success
  end

  test "should update sales_channel_api" do
    put :update, :id => @sales_channel_api, :sales_channel_api => @sales_channel_api.attributes
    assert_redirected_to sales_channel_api_path(assigns(:sales_channel_api))
  end

  test "should destroy sales_channel_api" do
    assert_difference('SalesChannelApi.count', -1) do
      delete :destroy, :id => @sales_channel_api
    end

    assert_redirected_to sales_channel_apis_path
  end
end
