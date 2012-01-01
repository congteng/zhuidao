require 'test_helper'

class HopesControllerTest < ActionController::TestCase
  setup do
    @hope = hopes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hopes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hope" do
    assert_difference('Hope.count') do
      post :create, hope: @hope.attributes
    end

    assert_redirected_to hope_path(assigns(:hope))
  end

  test "should show hope" do
    get :show, id: @hope.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hope.to_param
    assert_response :success
  end

  test "should update hope" do
    put :update, id: @hope.to_param, hope: @hope.attributes
    assert_redirected_to hope_path(assigns(:hope))
  end

  test "should destroy hope" do
    assert_difference('Hope.count', -1) do
      delete :destroy, id: @hope.to_param
    end

    assert_redirected_to hopes_path
  end
end
