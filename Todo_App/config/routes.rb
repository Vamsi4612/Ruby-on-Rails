Rails.application.routes.draw do
  # get 'posts/index'
  # get 'posts/new'

  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
