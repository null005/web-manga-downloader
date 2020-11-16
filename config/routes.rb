Rails.application.routes.draw do
  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  get 'welcome', to: 'sessions#welcome'

  resources :users, only: [:create, :new]

  root to: 'sessions#welcome'
end
