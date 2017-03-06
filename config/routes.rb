Rails.application.routes.draw do
  resources :orders
  resources :items
  resources :shippers
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static#index'
  #  get '/' => 'static#index'
  # resources :users
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'
  get 'shop' => 'items#index'

  # get '/items' => 'items#index'
  #  Submits to post '/cart'
  post '/cart' => 'orders#cart_add'
  #  Redirect to get '/cart'
  get '/cart' => 'orders#cart_view'
  #  Check out
  # post '/orders' => 'orders#create'
  #  Redirect to get '/orders'

end
