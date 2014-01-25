class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout :layout_by_resource

  def after_sign_out_path_for(admin_user)
    admin_user_root_path
  end

  private

  def layout_by_resource
    devise_controller? ? 'admin' : 'application'
  end
end
