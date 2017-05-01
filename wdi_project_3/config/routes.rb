Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :involved
  resources :informed
  resources :donate
  resources :events
  resources :calendar
  root to: "home#index"
  resources :home
  resources :favoritecharities
  get"/events/search", to: "events#search", as: :events_search
  # submiting form on front end will hit this route , tell team about this
  get '/donate/:state/:zipCode', to: 'donate#show'
  get '/donate/:state/:zipCode/:ein', to: 'donate#show2'
end
