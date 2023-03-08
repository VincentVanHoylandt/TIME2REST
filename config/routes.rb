Rails.application.routes.draw do
  get 'appliances/index'
  get 'appliances/create'
  get 'appliances/destroy'
  get 'seens/index'
  get 'seens/create'

  resources :offers
  get 'diplomas/create'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
