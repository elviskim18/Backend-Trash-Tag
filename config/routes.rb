Rails.application.routes.draw do
  resources :trashes
  resources :tags
  resources :posts
  resources :users, only: [:create, :index, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
