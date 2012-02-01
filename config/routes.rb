SupBook::Application.routes.draw do

  get "content/home"

  root :to => 'content#home'

end
