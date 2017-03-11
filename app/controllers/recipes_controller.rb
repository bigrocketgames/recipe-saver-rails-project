class RecipesController < ApplicationController

  def most_collected
    @recipes = policy_scope(Recipe)
  end

  def user_recipes_index
    user = User.find(params[:user_id])
    @recipes = user.recipes
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def create
    @recipe = Recipe.create(recipe_params)
    if @recipe.save
      redirect_to user_recipe_path(current_user, @recipe)
    else
      render :new
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :user_id, :description, :instructions, quantities_attributes: [:id, :amount, :done, :_destroy, ingredient_attributes: [:id, :name, :_destroy]])
  end

end
