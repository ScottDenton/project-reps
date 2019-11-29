Rails.application.routes.draw do
  resources :cardio_components
  resources :amraps
  resources :strength_component_muscles
  resources :strength_components
  resources :muscles
  resources :muscle_groups
  resources :users

  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
