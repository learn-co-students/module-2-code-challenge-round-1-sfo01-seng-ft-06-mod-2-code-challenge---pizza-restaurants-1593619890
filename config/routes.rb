Rails.application.routes.draw do
  resources :restaurant_pizzas
  # get '/restaurants', to: 'restaurants#index'
  resources :restaurants, only: [:index, :show, :update]
  # get '/pizzas', to: 'pizzas#index'
  resources :pizzas, only: [:index, :create, :new, :show, ]

end
