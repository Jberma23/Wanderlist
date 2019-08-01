Rails.application.routes.draw do
  resources :likes
  resources :posts do 
    resources :likes
  end
  # get "/posts/newsfeed", to: "post#newsfeed", as: "/newsfeed"
  # post "posts/new", to: "post#newsfeed"
  resources :activities
  resources :trips
  resources :countries
  resources :flights
  resources :users
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#logout"
  get '/wanderlist', to: "welcome#index", as: :home
  root :to => "welcome#index"
  
  

end
