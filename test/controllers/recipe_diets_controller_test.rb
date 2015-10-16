require 'test_helper'

class RecipeDietsControllerTest < ActionController::TestCase
  setup do
    @recipe_diet = recipe_diets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipe_diets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipe_diet" do
    assert_difference('RecipeDiet.count') do
      post :create, recipe_diet: { id_diet: @recipe_diet.id_diet, id_recipe: @recipe_diet.id_recipe }
    end

    assert_redirected_to recipe_diet_path(assigns(:recipe_diet))
  end

  test "should show recipe_diet" do
    get :show, id: @recipe_diet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recipe_diet
    assert_response :success
  end

  test "should update recipe_diet" do
    patch :update, id: @recipe_diet, recipe_diet: { id_diet: @recipe_diet.id_diet, id_recipe: @recipe_diet.id_recipe }
    assert_redirected_to recipe_diet_path(assigns(:recipe_diet))
  end

  test "should destroy recipe_diet" do
    assert_difference('RecipeDiet.count', -1) do
      delete :destroy, id: @recipe_diet
    end

    assert_redirected_to recipe_diets_path
  end
end
