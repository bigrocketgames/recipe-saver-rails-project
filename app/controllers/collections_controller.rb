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
    collection = Collection.new(collection_params)
    if collection.save
      flash[:notice] = "Your #{collection.name} collection created successfully!"
      redirect_to user_collection_path(params[:collection][:cook_id], collection)
    else
      flash[:notice] = "Your collection was not created successfully."
      render 'index'
    end
  end

  private

  def collection_params
    params.require(:collection).permit(:name, :cook_id, :food_id)
  end

end
