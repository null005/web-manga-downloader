Rails.application.routes.draw do
  
  resources :users, only: [:create, :new]
  
  get 'login', to: 'sessions#new'

  get 'welcome', to: 'sessions#welcome'

  get 'authorized', to: 'sessions#page_requires_login'

  get 'logout', to: 'sessions#logout'

  post 'login', to: 'sessions#create'

  root to: 'sessions#welcome'
end
