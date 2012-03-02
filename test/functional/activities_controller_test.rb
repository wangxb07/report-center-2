# -*- coding: utf-8 -*-
require 'test_helper'

class ActivitiesControllerTest < ActionController::TestCase

  setup do
    sign_in users(:one)
    @activity = activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create activity" do
    assert_difference('Activity.count') do
      # TODO 
      @activity.products_attributes = [
        { :outer_sku => "11222", :name => "红酒 wine", :activity_price => 10.01 }
      ]
      post_params = @activity.attributes
      post_params[:products_attributes] = [
          { :outer_sku => "11222", :name => "红酒 wine", :activity_price => 10.01 }
      ]
      post_params[:sales_channel_id] = sales_channels(:one)
      post :create, :activity => post_params
    end

    assert_redirected_to activity_path(assigns(:activity))
  end

  test "should show activity" do
    get :show, :id => @activity
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @activity
    assert_response :success
  end

  test "should update activity" do
    put :update, :id => @activity, :activity => @activity.attributes
    assert_redirected_to activity_path(assigns(:activity))
  end

  test "should destroy activity" do
    assert_difference('Activity.count', -1) do
      delete :destroy, :id => @activity
    end

    assert_redirected_to activities_path
  end
end
