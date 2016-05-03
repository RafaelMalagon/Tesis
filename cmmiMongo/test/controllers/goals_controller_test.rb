require 'test_helper'

class GoalsControllerTest < ActionController::TestCase
  setup do
    @goal = goals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:goals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create goal" do
    assert_difference('Goal.count') do
      post :create, goal: { n_processArea: @goal.n_processArea, t_description: @goal.t_description, t_name: @goal.t_name, t_type: @goal.t_type }
    end

    assert_redirected_to goal_path(assigns(:goal))
  end

  test "should show goal" do
    get :show, id: @goal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @goal
    assert_response :success
  end

  test "should update goal" do
    patch :update, id: @goal, goal: { n_processArea: @goal.n_processArea, t_description: @goal.t_description, t_name: @goal.t_name, t_type: @goal.t_type }
    assert_redirected_to goal_path(assigns(:goal))
  end

  test "should destroy goal" do
    assert_difference('Goal.count', -1) do
      delete :destroy, id: @goal
    end

    assert_redirected_to goals_path
  end
end
