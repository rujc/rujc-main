Rjc::Application.routes.draw do
  root to: 'dashboard#index' # just for now

  namespace :admin do
    get '/', to: 'dashboard#index'
  end
end
