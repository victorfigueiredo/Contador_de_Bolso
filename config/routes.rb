Rails.application.routes.draw do
  devise_for :usuarios
  devise_for :users
  resources :users
  get 'store/index'
  resources :itempedidos
  resources :pedidos
  resources :produtos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
