Rjc::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'static#main'

  resources :events, only: [:index, :show]

  get '/about',    to: 'static#about'
  get '/creators', to: 'static#creators'
  get '/contacts', to: 'static#contacts'
end
