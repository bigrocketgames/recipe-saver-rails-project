class RecipesController < ApplicationController
  before_action :get_recipe, only: [:show, :edit, :update]


  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def show
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

  def get_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :user_id, :description, :instructions, quantities_attributes: [:id, :amount, :done, :_destroy, ingredient_attributes: [:id, :name, :_destroy]])
  end

end
