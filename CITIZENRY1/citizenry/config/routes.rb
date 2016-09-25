Rails.application.routes.draw do
root to: redirect("petitions#index")
  resources :petitions :comments
end
