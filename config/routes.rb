Rails.application.routes.draw do
  
  root to: "application#index"

  resources :matches
  resources :rounds
  resources :teams
  resources :tournaments
  
  devise_for :users, :controllers => { registrations: "users/registrations", omniauth_callbacks: "users/omniauth_callbacks" }
end
