Rjc::Application.routes.draw do
  namespace :admin do
    get '/', to: 'dashboard#index'
  end
end
