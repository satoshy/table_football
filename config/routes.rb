Rails.application.routes.draw do
  
  root to: "application#index"
  #get "*path" => "application#index"

  resources :matches
  resources :rounds
  resources :teams
  resources :tournaments
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :controllers => { registrations: "users/registrations", omniauth_callbacks: "users/omniauth_callbacks" }
end
