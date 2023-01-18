Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :reservations
      end

      resources :cities do
        resources :hotels
      end
      resources :room_types, only: [:index]

      resources :hotels
      resources :cities, only: [:index]
    end
  end
  resources :users, param: :_username
  post '/auth/login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'
  get '/api/hotelbycity/:id', to: 'api/hotels#hotel_by_city'
  get '/api/v1/users/:id/reservations', to: 'api/v1/reservations#index'
end
