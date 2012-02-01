SupBook::Application.routes.draw do

  get "users/show"

  devise_for :users
  resources :users

  get "content/home"

  root :to => 'content#home'

end
