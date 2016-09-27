Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  devise_scope :user do
  authenticated :user do
    root 'articles#index', as: :authenticated_root
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
end

     resources :articles do
        resources :comments
end

  get "/search" => "articles#index"

  get "/about" => "about#index"


end

