Rails.application.routes.draw do

  resources :messages
  root to: 'pages#index'
  get 'pages/index'
  get 'aboutUS', to: 'pages#aboutUS'
  get 'contactUS', to: 'pages#contactUs'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
