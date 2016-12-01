class ActorsController < ApplicationController

  def index
    # tous les actors
    @actors = Actor.all
    # tous les actors dont le film est en salle en ce moment
  end

  def show
    @actor = Actor.includes(:movies).find(params[:id])
  end
end
