Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'fishing_parks#top'
  get '/fishing_parks/about' => 'fishing_parks#about', as: 'about'
  get '/users/quit' => 'users#quit', as: 'quit'
  get '/fishes/index' => 'fishes#index', as: 'index'


  resources :fishing_parks
  resources :users, only: [:show, :edit, :destroy, :update]
end
