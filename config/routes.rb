Rails.application.routes.draw do
  resources :reviews
  root "movies#index"

  resources :movies
  
  # get "movies" => "movies#index"
  # get "movies/:id" => "movies#show", as: "movie"
  # get "movies/:id/edit" => "movies#edit", as: "movie_edit"
  # patch "movies/:id" => "movies#update"
end
