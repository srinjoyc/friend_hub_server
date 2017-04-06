Rails.application.routes.draw do
  resources :posts
  resources :personalities
  resources :hubs
  resources :users

  get '/hub-history' => 'hub#getHistory'

  post '/match' => 'personalities#match'

  post '/checkin' => 'users#checkin'
  post '/checkout' => 'users#checkout'

  post '/login' => 'auth#login'
  root to: 'static#home'
  get '/get-models' => 'application#get_models'
  get '/get-user-routes' => 'application#get_user_routes'
  get '/get-hub-routes' => 'application#get_hub_routes'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
