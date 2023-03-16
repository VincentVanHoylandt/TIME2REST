Rails.application.routes.draw do
  get 'chatrooms/create'
  devise_for :users do
    ressources :users, only: :create

  end
  root to: "offers#index"
  get 'home', to: 'pages#home'
  get "dashboard", to: 'pages#dashboard', as: :dashboard

  resources :users, only: :show

  resources :diplomas, only: :create
  resources :messages, only: :create
  resources :offers do
    resources :appliances, only: %i[index create destroy update]
  end
  resources :participants, only: %i[create destroy] do
    resources :chatrooms, only: %i[create show index destroy]
  end
  resources :seens, only: %i[index create]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
