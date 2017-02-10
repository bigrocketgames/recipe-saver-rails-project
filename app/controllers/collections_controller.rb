class CollectionsController < ApplicationController

  def index
    if current_user
      user = User.find(params[:user_id])
      @collections = user.collections
    else
      redirect_to home_path
    end
  end

end
