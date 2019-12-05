Rails.application.routes.draw do
  post '/signup', to: "users#new", as: 'signup'
  get '/signup', to: "users#new"
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#verify'
  get '/logout', to: 'sessions#logout', as: 'logout'

  resources :users, only: [:show, :new, :create, :edit, :update]
  resources :closets, only: [:index, :show, :new, :create, :destroy]
  put '/items/:id/worn', to: 'items#worn', as: 'worn'
  resources :items, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :categories, only: [:show, :new, :create, :destroy]

  root 'sessions#login'


 

  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
