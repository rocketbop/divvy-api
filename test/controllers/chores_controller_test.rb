require 'test_helper'

class ChoresControllerTest < ActionController::TestCase
  setup do
    @chore = chores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chores)
  end

  test "should create chore" do
    assert_difference('Chore.count') do
      post :create, chore: {  }
    end

    assert_response 201
  end

  test "should show chore" do
    get :show, id: @chore
    assert_response :success
  end

  test "should update chore" do
    put :update, id: @chore, chore: {  }
    assert_response 204
  end

  test "should destroy chore" do
    assert_difference('Chore.count', -1) do
      delete :destroy, id: @chore
    end

    assert_response 204
  end
end
