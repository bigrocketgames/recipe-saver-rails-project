class ReviewsController < ApplicationController

  def create
    @review = current_user.reviews.build(review_params)
    if @review.save
      redirect_to recipe_path(@review.recipe)
    else
      flash[:alert] = "Your review was not saved due to an error."
      redirect_to recipe_path(@review.recipe)
    end
  end
  
  def show
    @review = Review.find(params[:id])
    respond_to do |format|
      format.json { render json: @review, include: '**' }
      format.html { render :show }
    end
  end

  private

  def review_params
    params.require(:review).permit(:recipe_id, :user_id, :content )
  end
  
end
