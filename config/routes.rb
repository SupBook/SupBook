SupBook::Application.routes.draw do

  resources :posts

  devise_for :users

  get "content/home"

  root :to => 'content#home'

end
