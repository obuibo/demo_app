require 'test_helper'

class PrincessesControllerTest < ActionController::TestCase
  setup do
    @princess = princesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:princesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create princess" do
    assert_difference('Princess.count') do
      post :create, princess: { name: @princess.name, wealth: @princess.wealth }
    end

    assert_redirected_to princess_path(assigns(:princess))
  end

  test "should show princess" do
    get :show, id: @princess
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @princess
    assert_response :success
  end

  test "should update princess" do
    put :update, id: @princess, princess: { name: @princess.name, wealth: @princess.wealth }
    assert_redirected_to princess_path(assigns(:princess))
  end

  test "should destroy princess" do
    assert_difference('Princess.count', -1) do
      delete :destroy, id: @princess
    end

    assert_redirected_to princesses_path
  end
end
