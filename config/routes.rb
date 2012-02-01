SupBook::Application.routes.draw do

  devise_for :users

  get "content/home"

  match "/invitations" => "invitation#new"
  match "/invitations/save" => "invitation#create"
  root :to => 'content#home'

end
