Rails.application.routes.draw do
  resources :trips
  resources :countries
  resources :flights
  resources :users
  root 'Application#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
