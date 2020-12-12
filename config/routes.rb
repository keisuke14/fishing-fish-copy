Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#top'
  get '/home/about' => 'home#about', as: 'about'
  get '/users/quit' => 'users#quit', as: 'quit'
  get '/fishes/index' => 'fishes#index', as: 'index'


  resources :fishing_parks do
    get :rank, on: :collection
    get :search, on: :collection
    resources :reviews, only: [:create, :destroy]
  end

  resources :users, only: [:show, :edit, :destroy, :update]
  resource :favorites, only: [:create, :destroy]
end
