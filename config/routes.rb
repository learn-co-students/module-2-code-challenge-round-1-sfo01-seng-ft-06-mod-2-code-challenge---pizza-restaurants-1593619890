Rails.application.routes.draw do
  get '/restaurants', to: 'restaurants#index'
  resources :pizzas, only: [:index, :new, :create, :show]
end
