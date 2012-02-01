SupBook::Application.routes.draw do

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  get "users/show"
  resources :posts

  devise_for :users
  resources :users
  resources :friendships


  get "content/home"

  match "globalmessage" => "content#global", :as => "global"
  match "globalmessage/:message" => "content#global", :as => "globalmessage"
  match "globalsend" => "content#send"

  match "acceptFriend" => "friendships#accept"
  match "/invitations" => "invitation#new"
  match "/invitations/save" => "invitation#create"
  root :to => 'content#home'

end
