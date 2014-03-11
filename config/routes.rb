Rjc::Application.routes.draw do
  devise_for :admin_users

  namespace :admin do
    get '/', to: 'dashboard#index', as: 'user_root'
  end

  get '/about',    to: 'static#about'
  get '/creators', to: 'static#creators'
  get '/contacts', to: 'static#contacts'
end
