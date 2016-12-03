class ReviewsController < ApplicationController

  def create
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
            format.html { render 'movies/show' }
            format.js
          end
        end

    # elsif params[:actor_id].present?
    #   @reviewable = Actor.find(params[:actor_id])
    #   @review = @reviewable.reviews.new(reviews_params)
    #   @review.user = current_user


    #   if @review.save
    #   respond_to do |format|
    #     format.html { redirect_to @reviewable }
    #     format.js
    #   end
    #   else
    #     respond_to do |format|
    #       format.html { render 'actors/show' }
    #       format.js
    #     end
    #   end

  end

    private

    def reviews_params
      params.require(:review).permit(:body)
    end
end
