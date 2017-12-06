Rails.application.routes.draw do
  devise_for :users
  resources :disciplinas
  root 'disciplinas#index'
  get 'welcome/index'

  resources :cadernos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
