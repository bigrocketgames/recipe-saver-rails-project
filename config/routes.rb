Rails.application.routes.draw do
  root 'static#home', as: 'home'
  get '/recipes/most_collected', to: 'recipes#most_collected'

  resources :recipes, only: [:index, :destroy]
  resources :recipes, only: [:show] do
    resources :reviews, only: [:create]
  end

  resources :user, only: [:show] do
    resources :collections, only: [:index, :show, :new, :create, :edit, :update]
    resources :recipes, only: [:index, :show, :new, :create, :edit, :update]
  end

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
