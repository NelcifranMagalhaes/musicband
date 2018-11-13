Rails.application.routes.draw do
  resources :discographies
  resources :tours
  resources :artists
  resources :bands
  devise_for :users
  get 'pages/home'
  get 'pages/discography'
  get 'pages/tour'
  get 'pages/contact'
  get 'pages/band'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
