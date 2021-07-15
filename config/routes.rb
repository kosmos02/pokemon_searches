Rails.application.routes.draw do
  resources :users, only: [:index, :create]
  resources :pokemon, only: :index
  resources :searches

  post "/login", to: "users#login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
