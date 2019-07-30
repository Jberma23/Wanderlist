Rails.application.routes.draw do
  resources :activities
  resources :trips
  resources :countries
  resources :flights
  resources :users
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#logout"
  get '/home', to: "welcome#index", as: :home
  root :to => "welcome#index"
  
  

end
