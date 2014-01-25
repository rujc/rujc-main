Rjc::Application.routes.draw do
  devise_for :admin_users

  namespace :admin do
    get '/', to: 'dashboard#index', as: 'user_root'
  end
end
