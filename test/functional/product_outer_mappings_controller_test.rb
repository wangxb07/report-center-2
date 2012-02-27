require 'test_helper'

class ProductOuterMappingsControllerTest < ActionController::TestCase
  setup do
    @product_outer_mapping = product_outer_mappings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_outer_mappings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_outer_mapping" do
    assert_difference('ProductOuterMapping.count') do
      post :create, :product_outer_mapping => @product_outer_mapping.attributes
    end

    assert_redirected_to product_outer_mapping_path(assigns(:product_outer_mapping))
  end

  test "should show product_outer_mapping" do
    get :show, :id => @product_outer_mapping
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @product_outer_mapping
    assert_response :success
  end

  test "should update product_outer_mapping" do
    put :update, :id => @product_outer_mapping, :product_outer_mapping => @product_outer_mapping.attributes
    assert_redirected_to product_outer_mapping_path(assigns(:product_outer_mapping))
  end

  test "should destroy product_outer_mapping" do
    assert_difference('ProductOuterMapping.count', -1) do
      delete :destroy, :id => @product_outer_mapping
    end

    assert_redirected_to product_outer_mappings_path
  end
end
