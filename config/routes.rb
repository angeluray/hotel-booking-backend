Rails.application.routes.draw do
  resources :users
  post 'login', to: 'authentication#login'
  
  namespace :api do
    namespace :v1 do
      resources :room_types
      resources :reservations
      resources :hotels
      resources :cities
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
