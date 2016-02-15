Rails.application.routes.draw do

  resources :teams
  resources :teams
  resources :tournaments
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :controllers => { registrations: "users/registrations", omniauth_callbacks: "users/omniauth_callbacks" }
  root to: "welcome#index"
end
