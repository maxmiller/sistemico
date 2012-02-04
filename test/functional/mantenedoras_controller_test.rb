require 'test_helper'

class MantenedorasControllerTest < ActionController::TestCase
  setup do
    @mantenedora = mantenedoras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mantenedoras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mantenedora" do
    assert_difference('Mantenedora.count') do
      post :create, :mantenedora => @mantenedora.attributes
    end

    assert_redirected_to mantenedora_path(assigns(:mantenedora))
  end

  test "should show mantenedora" do
    get :show, :id => @mantenedora
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @mantenedora
    assert_response :success
  end

  test "should update mantenedora" do
    put :update, :id => @mantenedora, :mantenedora => @mantenedora.attributes
    assert_redirected_to mantenedora_path(assigns(:mantenedora))
  end

  test "should destroy mantenedora" do
    assert_difference('Mantenedora.count', -1) do
      delete :destroy, :id => @mantenedora
    end

    assert_redirected_to mantenedoras_path
  end
end
