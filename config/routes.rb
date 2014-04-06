Rjc::Application.routes.draw do
  root to: 'static#main'

  resources :events, only: [:index, :show]

  get '/about',    to: 'static#about'
  get '/creators', to: 'static#creators'
  get '/contacts', to: 'static#contacts'
end
