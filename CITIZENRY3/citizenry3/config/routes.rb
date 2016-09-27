Rails.application.routes.draw do
  root to: "articles#index"
     resources :articles do
        resources :comments
  end

  get "/search" => "articles#index"

  get "/about" => "about#index"
end

