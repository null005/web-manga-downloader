Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/welcome'

  resources :users, only: [:create, :new]

  root to: 'sessions#welcome'
end
