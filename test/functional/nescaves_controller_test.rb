require 'test_helper'

class NescavesControllerTest < ActionController::TestCase
  setup do
    @nescafe = nescaves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nescaves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nescafe" do
    assert_difference('Nescafe.count') do
      post :create, nescafe: @nescafe.attributes
    end

    assert_redirected_to nescafe_path(assigns(:nescafe))
  end

  test "should show nescafe" do
    get :show, id: @nescafe.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nescafe.to_param
    assert_response :success
  end

  test "should update nescafe" do
    put :update, id: @nescafe.to_param, nescafe: @nescafe.attributes
    assert_redirected_to nescafe_path(assigns(:nescafe))
  end

  test "should destroy nescafe" do
    assert_difference('Nescafe.count', -1) do
      delete :destroy, id: @nescafe.to_param
    end

    assert_redirected_to nescaves_path
  end
end
