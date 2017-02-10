Rails.application.routes.draw do
  root 'users#index', as: 'home'

  resources :recipes
  resources :collections

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
