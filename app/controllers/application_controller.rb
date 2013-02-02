class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_current_user
  helper_method :logged_in?

  def set_current_user
    if session[:session_token]
      @current_user = User.find_by_session_token(session[:session_token])
    else
      @current_user = nil
    end
  end

  def logged_in?
    !!@current_user
  end
end
