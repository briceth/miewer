class ActorsController < ApplicationController

  def index
    @actors = Actor.all.order(:last_name)
  end

  def show
    @actor = Actor.includes(:movies).find(params[:id])

    @last_reviews = @actor.reviews.last(9)
    @reviews = @last_reviews.select do |review|
      review.persisted?
    end
  end
end
