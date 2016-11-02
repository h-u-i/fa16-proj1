Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  resources :pokemons, :only => [:new, :create, :update]

  patch '/capture/:id', to: 'pokemons#capture', as: 'capture'
  patch '/damage/:id', to: 'pokemons#damage', as: 'damage'
  get '/pokemons/new', to: 'pokemons#new'
  post '/pokemons', to: 'pokemons#create'

end
