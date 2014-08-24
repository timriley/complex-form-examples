require 'test_helper'

class CategoriesProjectsControllerTest < ActionController::TestCase
  setup do
    @categories_project = categories_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categories_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categories_project" do
    assert_difference('CategoriesProject.count') do
      post :create, :categories_project => @categories_project.attributes
    end

    assert_redirected_to categories_project_path(assigns(:categories_project))
  end

  test "should show categories_project" do
    get :show, :id => @categories_project.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @categories_project.to_param
    assert_response :success
  end

  test "should update categories_project" do
    put :update, :id => @categories_project.to_param, :categories_project => @categories_project.attributes
    assert_redirected_to categories_project_path(assigns(:categories_project))
  end

  test "should destroy categories_project" do
    assert_difference('CategoriesProject.count', -1) do
      delete :destroy, :id => @categories_project.to_param
    end

    assert_redirected_to categories_projects_path
  end
end
