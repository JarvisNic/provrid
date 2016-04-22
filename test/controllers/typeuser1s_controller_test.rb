require 'test_helper'

class Typeuser1sControllerTest < ActionController::TestCase
  setup do
    @typeuser1 = typeuser1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:typeuser1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create typeuser1" do
    assert_difference('Typeuser1.count') do
      post :create, typeuser1: { date: @typeuser1.date, facultadto: @typeuser1.facultadto, mydeparment: @typeuser1.mydeparment, norwork: @typeuser1.norwork, type: @typeuser1.type }
    end

    assert_redirected_to typeuser1_path(assigns(:typeuser1))
  end

  test "should show typeuser1" do
    get :show, id: @typeuser1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @typeuser1
    assert_response :success
  end

  test "should update typeuser1" do
    patch :update, id: @typeuser1, typeuser1: { date: @typeuser1.date, facultadto: @typeuser1.facultadto, mydeparment: @typeuser1.mydeparment, norwork: @typeuser1.norwork, type: @typeuser1.type }
    assert_redirected_to typeuser1_path(assigns(:typeuser1))
  end

  test "should destroy typeuser1" do
    assert_difference('Typeuser1.count', -1) do
      delete :destroy, id: @typeuser1
    end

    assert_redirected_to typeuser1s_path
  end
end
