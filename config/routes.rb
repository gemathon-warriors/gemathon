Warriors::Application.routes.draw do
  get "home/index"
  get "home/spicon_gem"
  get "home/tareek"

  match '/plugins/twitter' => 'home#twitter' , via: [:get, :post]

  post "tareek/calc"

  root 'home#index'

end
