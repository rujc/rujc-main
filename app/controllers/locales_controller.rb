class LocalesController < ApplicationController
  def en
    session[:current_locale] = :en
    redirect_to root_path
  end

  def ru
    session[:current_locale] = :ru
    redirect_to root_path
  end
end
