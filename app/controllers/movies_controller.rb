class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :destroy]

  def index
    @movies = Movie.all
    @movies_available = Movie.available
    @movie = Movie.new
    @movie.actors.new
  end

  def show
    @last_reviews = @movie.reviews.last(9)
    @reviews = @last_reviews.select do |review|
      review.persisted?
    end
  end

  def create
    @movie = current_user.movies.new(movie_params)
    @movie.actors.first.user_id = current_user.id
    @movie.user = current_user

    if params[:movie][:actors_attributes].present?
      @movie.actors.first.profession = "Acteur"
    end

    if @movie.save
      redirect_to movies_path, notice: "'#{@movie.title}' a été posté!"
    else
      flash[:notice] = "Oops, remplissez toutes les cases"
    end
  end

  def destroy
    if @movie.user = current_user
      @movie.destroy
      redirect_to movies_path, notice: "votre film a été supprimé!"
    end
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :description, :date, :picture, :picture_cache, :available, :category, actors_attributes: [:first_name, :last_name, :image_id, :image_id_cache])
  end
end
