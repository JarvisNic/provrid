require 'test_helper'

class FacultadsControllerTest < ActionController::TestCase
  setup do
    @facultad = facultads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:facultads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create facultad" do
    assert_difference('Facultad.count') do
      post :create, facultad: { name: @facultad.name }
    end

    assert_redirected_to facultad_path(assigns(:facultad))
  end

  test "should show facultad" do
    get :show, id: @facultad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @facultad
    assert_response :success
  end

  test "should update facultad" do
    patch :update, id: @facultad, facultad: { name: @facultad.name }
    assert_redirected_to facultad_path(assigns(:facultad))
  end

  test "should destroy facultad" do
    assert_difference('Facultad.count', -1) do
      delete :destroy, id: @facultad
    end

    assert_redirected_to facultads_path
  end
end
