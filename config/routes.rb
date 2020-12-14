Rails.application.routes.draw do
  resources :orders
  #devise_for :users
  #resources :users
  resources :itempedidos
  resources :pedidos
  root to: 'loja#index'
  resources :produtos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
