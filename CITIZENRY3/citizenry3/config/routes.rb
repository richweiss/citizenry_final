Rails.application.routes.draw do
  devise_for :users
  root to: "articles#index"
     resources :articles do
        resources :comments
  end

  get "/search" => "articles#index"

  get "/about" => "about#index"


end

