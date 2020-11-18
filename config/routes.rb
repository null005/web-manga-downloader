Rails.application.routes.draw do
  
  resources :users, only: [:create, :new]
  
  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  get 'welcome', to: 'sessions#welcome'

  get 'authorized', to: 'sessions#page_requires_login'

  root to: 'sessions#welcome'
end
