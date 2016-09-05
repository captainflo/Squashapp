Rails.application.routes.draw do

  resources :customers, only: [:show, :new, :create, :edit, :update, :destroy]

  get 'dashboard', to: 'dashboard#index'
  
  get 'page/home'

  get 'page/about'

  get 'page/contact'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'page#home'
end
