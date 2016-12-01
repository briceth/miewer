class ReviewsController < ApplicationController

  def create
    if params[:movie_id].present?
     @reviewable = Movie.find(params[:movie_id])
      @review = @reviewable.reviews.new(reviews_params)
      @review.user = current_user
      @review.save
      redirect_to @reviewable, notice: "your review has been posted"

    elsif params[:actor_id].present?
      @reviewable = Actor.find(params[:actor_id])
      @review = @reviewable.reviews.new(reviews_params)
      @review.user = current_user
      @review.save
      redirect_to @reviewable, notice: "your review has been posted"
    end
  end

  private

  def reviews_params
    params.require(:review).permit(:body)
  end
end

