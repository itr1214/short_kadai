# == Route Map
#

Rails.application.routes.draw do
  post 'register-url', to: 'urls#create'
  get 'urls', to: 'urls#index'
  get ':id', to: 'urls#to_original_url'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
