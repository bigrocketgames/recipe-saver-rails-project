Rails.application.routes.draw do
  root 'user#index', as: 'home'

  resources :recipes, only: [:index, :show, :create]
  resources :collections, only: [:create, :update]

  resources :user, only: [:show] do
    resources :collections, only: [:index, :show, :new, :edit]
    resources :recipes, only: [:index, :show, :new, :edit, :update]
  end

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
