SupBook::Application.routes.draw do

  get "users/show"
  resources :posts

  devise_for :users
  resources :users

  get "content/home"

  match "/invitations" => "invitation#new"
  match "/invitations/save" => "invitation#create"
  root :to => 'content#home'

end
