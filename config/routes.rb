Rails.application.routes.draw do

  resources :users, only: [:show, :new, :create, :edit, :update]
  resources :closets, only: [:index, :show, :new, :create, :delete]
  resources :items, only: [:show, :new, :create, :edit, :update, :delete]
  resources :categories, only: [:show, :new, :create, :delete]


  post '/signup', to: "users#new", as: 'signup'

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#verify'

  get '/logout', to: 'sessions#logout', as: 'logout'

  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
