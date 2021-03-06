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
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy', as: :signout
  end

     resources :articles do
        resources :comments
end

  get "/search" => "articles#index"

  get "/about" => "about#index"

  #get "/users/sign_out" => "devise/sessions#destroy"


end

