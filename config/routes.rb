Rails.application.routes.draw do
  match '/users',   to: 'users#index',   via: 'get'
  get '/pedidos/emprestar/:id', to: 'pedidos#emprestar', as: 'emprestar'
  devise_for :users
  resources :pedidos
  resources :disciplinas
  root 'disciplinas#index'
  resources :cadernos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
