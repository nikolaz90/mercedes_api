Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :geolocations, only: [ :index, :create ]
    end
  end

  # index end point
  ## /api/v1/geolocations
  # new
  ## /api/v1/geolocations/new

  # Defines the root path route ("/")
  # root "articles#index"
end
