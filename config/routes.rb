Warriors::Application.routes.draw do
  get "home/index"
  get "home/spicon_gem"
  get "home/tareek"

  match '/plugins/twitter' => 'home#twitter' , via: [:get, :post]

  post "tareek/calc"
  post "tareek/calc_day"

  root 'home#index'

end
