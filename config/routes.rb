Rails.application.routes.draw do
  resources :trashes
  resources :tags
  resources :posts, only: [:create, :index, :destroy, :update]
  resources :users, only: [:create, :index, :show, :update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/login", to: "sessions#login"
  post "/signup", to: "sessions#signup"
  
end
