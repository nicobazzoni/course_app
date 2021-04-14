
class SessionsController < ApplicationController
  skip_before_action :login_required, :only => [:new, :create]

  def new
    @user = User.new
  end

  def create
    user = User.find_by_username(params[:username])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        binding.pry
        redirect_to student_path, :notice => " Welcome back, {user.username} "
      else
        flash.now.alert = " Invalid email or password "
        render “new”
      end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private
    def login(user)
      session[:user_id] = nil
    end
end