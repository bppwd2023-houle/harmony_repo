Rails.application.routes.draw do
  namespace :web do
    get 'events/calendar'
    get 'events/show'
  end
  resources :sponsors
  resources :photos
  resources :albums
  resources :events
  resources :pages
  resources :sections
  devise_for :users
  get 'site/home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "site#home"
end
