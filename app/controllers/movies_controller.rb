class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all.order({ :year => :desc, :title => :asc })
    render({ :template => "movie_templates/index" })
  end

  def show
    movie_id = params.fetch("movie_id")
    matching_movie = Movie.where({ :id => movie_id })
    @the_movie = matching_movie.at(0)
  
    render({ :template => "movie_templates/show" })
  end
end
