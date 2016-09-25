Rails.application.routes.draw do
  resources :petitions
root to: redirect('/comments')
  resources :comments
end
