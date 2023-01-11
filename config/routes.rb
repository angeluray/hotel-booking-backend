Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :room_types
      resources :reservations
      resources :hotels
      resources :cities
    end
  end
  resources :users, param: :_username
  post '/auth/login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
