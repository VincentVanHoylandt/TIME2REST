Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  get 'participants/create'
  get 'messages/create'
  get 'chatrooms/create'
  get 'chatrooms/show'
  get 'chatrooms/index'
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
