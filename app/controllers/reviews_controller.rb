class ReviewsController < ApplicationController
  def index
    @review = Review.new
    @reviews = Review.all
  end

  def create
    @review = Review.new(review_params)
    if current_user
      @review.user_id = current_user.id
    else
      @review.user_id = 0
    end
    if @review.save
      respond_to do |format|
        format.html { redirect_to reviews_path, notice: "Game Rated!" }
        format.json { render :show }
      end
    else
      respond_to do |format|
        format.html { render reviews_path }
        format.json
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:message, :rating)
  end
end
