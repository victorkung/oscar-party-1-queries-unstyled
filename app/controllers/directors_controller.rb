class DirectorsController < ApplicationController
  
  def index
    @list_of_directors = Director.all
    
    render({ :template => "director_templates/index" })
  end

  def show
    the_id = params.fetch("director_id")

    matching_directors = Director.where({ :id => the_id })

    @the_director = matching_directors.at(0)

    render({ :template => "director_templates/show" })
  end

end
