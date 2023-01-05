Rails.application.routes.draw do
  resources :cinemas
  resources :bookings
  root 'sessions#index'
  get 'showing' => 'sessions#showing'
  # get 'booked' => 'bookings#booked'
  get 'showing' => 'sessions#showing'
  get '/profile/edit' => "users#profile_edit"
  patch '/profile/edit' => "users#profile_update"
  get '/profile' => "users#profile"
  get "/signup" => "users#new"
  post "/signup" => "users#create"
  get '/admin/index' => "users#index"
  get '/login' => "sessions#new"
  post '/login' => "sessions#create"
  delete '/logout' => 'sessions#destroy'
  resources :movies
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
