class MoviesController < ApplicationController
  before_action :set_movie, only: [:show]

  def index
    @movies = Movie.all
    @movie = Movie.new
    @movie.actors.new
  end

  def show
  end

  def create
    @movie = current_user.movies.new(movie_params)
    @movie.actors.first.user_id = current_user.id
    @movie.user = current_user
    if @movie.save
      redirect_to movies_path, notice: "votre film a été ajouté!"
    else
      redirect_to movies_path, alert: "Ce film existe déjà"
    end

  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :description, :date, :picture, :picture_cache, actors_attributes: [:first_name, :last_name])
  end
end
