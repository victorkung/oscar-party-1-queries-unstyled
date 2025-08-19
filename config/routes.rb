Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/about", { :controller => "misc", :action => "about" })

  get("/movies", { :controller => "movies", :action => "index"  })
  get("/movies/:movie_id", { :controller => "movies", :action => "show" })

  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:director_id", { :controller => "directors", :action => "show" })
end
