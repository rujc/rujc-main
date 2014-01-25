class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout :layout_by_resource

  private

  def layout_by_resource
    devise_controller? ? 'admin' : 'application'
  end
end
