Rails.application.routes.draw do
  resources :comments
root to: redirect('/petitions')
  resources :petitions
end
