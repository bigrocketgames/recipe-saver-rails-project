class ReviewsController < ApplicationController

  def create
    @review = current_user.reviews.build(review_params)
    if @review.save
      respond_to do |format|
        format.json { render json: @review }
        format.html { redirect_to recipe_path(@review.recipe) }
      end
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
    params.require(:review).permit(:recipe_id, :user_id, :title, :content )
  end
  
end
