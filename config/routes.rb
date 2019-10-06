Rails.application.routes.draw do
  resources :exercise_muscles
  resources :exercises
  resources :muscles
  resources :muscle_groups
  resources :users

  root to: 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
