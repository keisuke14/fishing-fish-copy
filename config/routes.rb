Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'fishing_parks#top'
  get '/fishing_parks/about' => 'fishing_parks#about', as: 'about'
  
  resources :fishing_parks, only: [:show,:index]
  
  
end
