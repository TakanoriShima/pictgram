Rails.application.routes.draw do

  get 'sessions/new'

#   get 'pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root 'pages#index' 
 get 'pages/help'
 resources :users
 
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :topics  
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create' 
  delete '/favorites', to: 'favorites#destroy'  
  
end
