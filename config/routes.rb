Rails.application.routes.draw do
  root to: 'restaurants#index'

  # # 1. See all restaurants - C[R]UD - #all - localhost:3000/restaurants - index
  # get '/restaurants', to: 'restaurants#index'

  # get '/restaurants/new', to: 'restaurants#new'

  # # 2. See details about one restaurant - C[R]UD - #find - localhost:3000/restaurants/:id - show
  # get '/restaurants/:id', to: 'restaurants#show', as: :restaurant

  # post '/restaurants', to: 'restaurants#create'

  # get '/restaurants/:id/edit', to: 'restaurants#edit'

  # patch "restaurants/:id", to: "restaurants#update"

  # delete "restaurants/:id", to: "restaurants#destroy"

  resources :restaurants
end
