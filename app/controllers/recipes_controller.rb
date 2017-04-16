class RecipesController < ApplicationController

  def most_collected
    @recipes = policy_scope(Recipe)
  end

  def index
    if (params[:user_id])
      user = User.find(params[:user_id])
      @recipes = user.recipes
    else
      @recipes = Recipe.all
    end
  end

  def new
    @recipe = Recipe.new
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def create
    @recipe = current_user.recipes.build(recipe_params)
    if @recipe.save
      redirect_to user_recipe_path(current_user, @recipe)
    else
      render :new
    end
  end

  def destroy
    recipe = Recipe.find(params[:id])
    if current_user.id == recipe.user_id
      recipe.destroy
      redirect_to recipes_path
    else
      redirect_back
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :user_id, :description, :instructions, quantities_attributes: [:id, :amount, :done, :_destroy, ingredient_attributes: [:id, :name, :_destroy]])
  end

end
