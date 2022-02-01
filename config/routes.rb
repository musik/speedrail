Rails.application.routes.draw do
  root 'pages#home'

  devise_for :users

  # devise_scope :user do
  #   get 'signup', to: 'devise/registrations#new'
  #   get 'login', to: 'devise/sessions#new'
  # end

  resources :dashboard, only: [:index]

  get 'logout', to: 'pages#logout', as: 'logout'

  # static pages
  get 'terms', to: 'pages#terms'
  get 'privacy', to: 'pages#privacy'
end
