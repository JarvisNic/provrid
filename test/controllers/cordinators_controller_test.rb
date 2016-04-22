require 'test_helper'

class CordinatorsControllerTest < ActionController::TestCase
  setup do
    @cordinator = cordinators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cordinators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cordinator" do
    assert_difference('Cordinator.count') do
      post :create, cordinator: { address: @cordinator.address, name: @cordinator.name, phone: @cordinator.phone }
    end

    assert_redirected_to cordinator_path(assigns(:cordinator))
  end

  test "should show cordinator" do
    get :show, id: @cordinator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cordinator
    assert_response :success
  end

  test "should update cordinator" do
    patch :update, id: @cordinator, cordinator: { address: @cordinator.address, name: @cordinator.name, phone: @cordinator.phone }
    assert_redirected_to cordinator_path(assigns(:cordinator))
  end

  test "should destroy cordinator" do
    assert_difference('Cordinator.count', -1) do
      delete :destroy, id: @cordinator
    end

    assert_redirected_to cordinators_path
  end
end
