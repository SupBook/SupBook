SupBook::Application.routes.draw do

  devise_for :users

  get "content/home"

  root :to => 'content#home'

end
