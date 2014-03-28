Rjc::Application.routes.draw do
  devise_for :admin_users

  namespace :admin do
    get '/', to: 'dashboard#index', as: 'user_root'
  end

  root to: 'static#main'

  resources :events, only: [:index, :show]

  get '/about',    to: 'static#about'
  get '/creators', to: 'static#creators'
  get '/contacts', to: 'static#contacts'
end
