Rails.application.routes.draw do
  resources :actors
  resources :reviews
  resources :movies
  resources :directors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
