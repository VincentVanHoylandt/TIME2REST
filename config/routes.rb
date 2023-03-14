Rails.application.routes.draw do
  devise_for :users
  root to: "offers#index"
  get 'home', to: 'pages#home'
  get "dashboard", to: 'pages#dashboard', as: :dashboard

  resources :users, only: :show
  resources :chatrooms, only: %i[create show index]
  resources :diplomas, only: :create
  resources :messages, only: :create
  resources :offers do
    resources :appliances, only: %i[index create destroy]
  end
  resources :participants, only: :create
  resources :seens, only: %i[index create]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
