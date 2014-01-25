Rjc::Application.routes.draw do
  devise_for :admin_users

  root to: 'dashboard#index' # just for now

  namespace :admin do
    get '/', to: 'dashboard#index'
  end
end
