Rails.application.routes.draw do

  devise_for :users

  resources :customers, only: [:show, :new, :create, :edit, :update, :destroy] do
    resources :cards, only: [:show, :new, :create, :edit, :update, :destroy]
    resources :comments, only: [:show, :new, :create, :edit, :update, :destroy]
  end
  resources :users, only: [:show, :new, :edit, :destroy, :update]
  resources :categories, only: [:show, :new, :create, :edit, :update, :destroy]
  post 'employees', to: 'users#create'
  get 'dashboard', to: 'dashboard#index'

  get 'search', to: 'search#index'

  get 'page/home'

  get 'page/about'

  get 'page/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'page#home'
end
