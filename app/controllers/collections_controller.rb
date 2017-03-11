class CollectionsController < ApplicationController

  def index
    if current_user
      user = User.find(params[:user_id])
      @collections = user.collections
      @collection = Collection.new
    else
      redirect_to home_path
    end
  end

  def show
    @collection = Collection.find(params[:id])
  end

  def create
    if !params[:collection][:id]
      collection = Collection.new(collection_params)
      recipe = Recipe.find(params[:collection][:recipe_id])
      collection.recipes << recipe
      if collection.save
        recipe.update(collected_count: recipe.collections.count)
        flash[:notice] = "Your #{collection.name} collection created successfully!"
        redirect_to user_collection_path(params[:collection][:cook_id], collection)
      else
        flash[:notice] = "Your collection was not created successfully."
        render 'index'
      end
    else
      collection = Collection.find(params[:collection][:id])
      recipe = Recipe.find(params[:collection][:recipe_id])
      if !collection.recipes.include?(recipe)
        collection.recipes << recipe
        if collection.save
          recipe.update(collected_count: recipe.collections.count)
          flash[:notice] = "The recipe was successfully added to your collection."
          redirect_to recipes_path
        else
          flash[:notice] = "The recipe was not added to your collection due to an error."
          redirect_to recipes_path
        end
      else
        flash[:error] = "The recipe #{recipe.name} was already in your collection and not added again."
        redirect_back fallback_location: recipes_path
      end
    end
  end

  private

  def collection_params
    params.require(:collection).permit(:name, :cook_id, :recipe_id => [])
  end

end
