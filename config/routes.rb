Warriors::Application.routes.draw do
  get "home/index"
  get "home/spicon_gem"
  get "home/tareek"

  # post "tareek/get_middle_of_next_month_date"

  post "tareek/calc"

  root 'home#index'

end
