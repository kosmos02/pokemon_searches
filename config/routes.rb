Rails.application.routes.draw do
  resources :users
  resources :pokemon, only: :index
  resources :searches

  get "/pokemon/:id", to: 'pokemon#show'
  post "/login", to: "users#login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
