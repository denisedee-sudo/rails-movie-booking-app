Rails.application.routes.draw do
  get 'sessions/index'
  get 'sessions/about'
  resources :cinemas
  resources :movies
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
