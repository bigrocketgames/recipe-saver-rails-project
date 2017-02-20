class CollectionsController < ApplicationController

  def index
    if current_user
      user = User.find(params[:user_id])
      @collections = user.collections
    else
      redirect_to home_path
    end
  end

  def new
    @collection = Collection.new
  end

  def create
    collection = Collection.create(collection_params)
    if collection.save
      flash[:notice] = "Your #{collection.name} collection created successfully!"
      redirect_to user_collection_path(collection)
    else
      render 'new'
    end
  end

  private

  def collection_params
    params.require(:collection).permit(:name, :cook_id, :food_id)
  end

end
