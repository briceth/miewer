class ReviewsController < ApplicationController

  def create
    if params[:movie_id]
     @reviewable = Movie.find(params[:movie_id])
      @review = @reviewable.reviews.new(reviews_params)
      @review.user = current_user
      if @review.save

      respond_to do |format|
        format.html { redirect_to @reviewable }
        format.js
      end
      else
        respond_to do |format|
          format.html { redirect_to @reviewable }
          format.js
        end
    end

    # elsif params[:actor_id]
    #   @reviewable = Actor.find(params[:actor_id])
    #   @review = @reviewable.reviews.new(reviews_params)
    #   @review.user = current_user
    #   @review.save
    #   redirect_to @reviewable, notice: "your review has been posted"

    #   respond_to do |format|
    #     format.html { redirect_to @reviewable }
    #     format.js
    #   end
    end
  end

  private

  def reviews_params
    params.require(:review).permit(:body)
  end
end

