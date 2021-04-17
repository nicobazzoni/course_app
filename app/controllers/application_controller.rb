class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :login_required
  include SessionsHelper
  def login_required
    if !logged_in?
          redirect_to user_login_path, :notice =>  " Log in to edit or delete your post "
    end
  end

  def logged_in?
    !!current_user
  end

  helper_method :logged_in?

  #This method gives us details about our user
  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
      @current_user
    else
      false
    end
  end

  helper_method :current_user


end
