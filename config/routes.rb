Rails.application.routes.draw do
  resources :meetings
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :teams
  resources :projects
  devise_for :users
  root 'home#index'
end