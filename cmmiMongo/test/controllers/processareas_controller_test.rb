require 'test_helper'

class ProcessareasControllerTest < ActionController::TestCase
  setup do
    @processarea = processareas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:processareas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create processarea" do
    assert_difference('Processarea.count') do
      post :create, processarea: { n_level: @processarea.n_level, t_description: @processarea.t_description, t_name: @processarea.t_name }
    end

    assert_redirected_to processarea_path(assigns(:processarea))
  end

  test "should show processarea" do
    get :show, id: @processarea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @processarea
    assert_response :success
  end

  test "should update processarea" do
    patch :update, id: @processarea, processarea: { n_level: @processarea.n_level, t_description: @processarea.t_description, t_name: @processarea.t_name }
    assert_redirected_to processarea_path(assigns(:processarea))
  end

  test "should destroy processarea" do
    assert_difference('Processarea.count', -1) do
      delete :destroy, id: @processarea
    end

    assert_redirected_to processareas_path
  end
end
