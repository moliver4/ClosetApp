Rails.application.routes.draw do

  resources :users, only: [:show, :new, :create, :edit, :update]
  resources :closet, only: [:index, :show, :new, :create, :delete]
  resources :items, only: [:show, :new, :create, :edit, :update, :delete]
  resources :categories, only: [:show, :new, :create, :delete]
  
  get '/signup', to: "users#new"
  post '/signup', to: "users#create"

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#verify'

  post '/logout', to: 'sessions#logout'

  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
