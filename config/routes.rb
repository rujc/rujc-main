Rjc::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'static#main'

  resources :participants, only: [:create]
  resources :articles, only: [:index, :show]

  get '/team',     to: 'static#team'
  get '/contacts', to: 'static#contacts'
  get '/en', to: 'locales#en'
  get '/ru', to: 'locales#ru'
end
