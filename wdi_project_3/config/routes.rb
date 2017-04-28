Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :involved
  resources :informed
  resources :donate
  resources :events
  root to: "home#index"

  get '/donate/:state/:zipCode', to: 'donate#show'
  get '/donate/:state/:zipcode/:charityName', to: 'donate#show2'
end
