class MoviesController < ApplicationController
before_action :set_movie, except: [:index]
  def index
    @movies = Movie.all
  end

  def show
    # @movie = Movie.find(params[:id])
  end

  def edit
    # @movie = Movie.find(params[:id])
  end

  def update
    # @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    redirect_to @movie
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :description, :rating, :released_on, :total_gross)
  end

  def set_movie
    @movie = Movie.find(params[:id])
  end

end
