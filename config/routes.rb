Rails.application.routes.draw do
  root 'posts#index'
  get 'ui(/:action)', controller: 'ui'
  resources :posts
  get 'about', to: 'pages#about'
  get 'stream', to: 'pages#stream'
  get 'hearthstone', to: 'posts#hearthstone'
  get 'heroes', to: 'posts#heroes'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :admin, only: [:index]
end
