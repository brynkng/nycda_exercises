class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def admin?
    if session[:admin_id]
      return !!Admin.find(session[:admin_id])
    else
      return false
    end
  end
end
