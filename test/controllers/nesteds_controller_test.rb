require 'test_helper'

class NestedsControllerTest < ActionController::TestCase
  setup do
    @nested = nesteds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nesteds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nested" do
    assert_difference('Nested.count') do
      post :create, nested: {  }
    end

    assert_redirected_to nested_path(assigns(:nested))
  end

  test "should show nested" do
    get :show, id: @nested
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nested
    assert_response :success
  end

  test "should update nested" do
    patch :update, id: @nested, nested: {  }
    assert_redirected_to nested_path(assigns(:nested))
  end

  test "should destroy nested" do
    assert_difference('Nested.count', -1) do
      delete :destroy, id: @nested
    end

    assert_redirected_to nesteds_path
  end
end
