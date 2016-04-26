Rails.application.routes.draw do
  root 'best_buy#index'

  post "/search", to: "best_buy#search"

  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :items, only: [:index, :show, :destroy, :create]
    end
  end
end
