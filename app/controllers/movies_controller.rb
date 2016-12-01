class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    @movie = Movie.new
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.user = current_user
    if @movie.save
      redirect_to movies_path
    else
      redirect_to movies_path, alert: "Ce film existe déjà"
    end

  end

  private

  def movie_params
    params.require(:movie).permit(:title, :description, :date, :photo, :photo_cache)
  end

end
