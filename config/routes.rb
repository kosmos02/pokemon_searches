Rails.application.routes.draw do
  resources :pokemon, only: :index
  resources :searches

  get "/pokemon/*query", to: 'pokemon#show_specific_pokemon'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
