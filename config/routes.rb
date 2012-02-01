SupBook::Application.routes.draw do

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  get "users/show"
  resources :posts

  devise_for :users
  resources :users
  resources :friendships

	resources :comments

  get "content/home"

  match "/invitations" => "invitation#new"
  match "/invitations/save" => "invitation#create"
  root :to => 'content#home'

end
