require 'test_helper'

class UnidadesControllerTest < ActionController::TestCase
  setup do
    @unidade = unidades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unidade" do
    assert_difference('Unidade.count') do
      post :create, :unidade => @unidade.attributes
    end

    assert_redirected_to unidade_path(assigns(:unidade))
  end

  test "should show unidade" do
    get :show, :id => @unidade
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @unidade
    assert_response :success
  end

  test "should update unidade" do
    put :update, :id => @unidade, :unidade => @unidade.attributes
    assert_redirected_to unidade_path(assigns(:unidade))
  end

  test "should destroy unidade" do
    assert_difference('Unidade.count', -1) do
      delete :destroy, :id => @unidade
    end

    assert_redirected_to unidades_path
  end
end
