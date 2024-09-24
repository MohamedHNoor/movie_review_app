Rails.application.routes.draw do
  root "movies#index"
  
  
  resources :movies do
    resources :reviews
    resources :favorites, only: [:create, :destroy]
  end
  
  resources :users
  get "signup" => "users#new"

  resource :session, only: [ :new, :create, :destroy ]
  get "sign-in" => "sessions#new"

end
