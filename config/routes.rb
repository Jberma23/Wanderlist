Rails.application.routes.draw do
  resources :activities
  resources :trips
  resources :countries
  resources :flights
  resources :users
  root :to => "welcome#index"
  
  

end
