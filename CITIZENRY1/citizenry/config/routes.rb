Rails.application.routes.draw do
root to: redirect('/comments')
  resources :comments
end
