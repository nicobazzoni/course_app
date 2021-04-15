class SessionsController < ApplicationController
  skip_before_action :login_required, :only => [:new, :create]

  def new
    @user = User.new
  end

  def create 
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
     session[:user_id]= user.id
     redirect_to user_path(user)
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
  # def create
#   user = User.find_by_username(params[:username])
#   if user && user.authenticate(params[:password])
#     session[:user_id] = user.id
#     redirect_to user_path(user)
#   else
#     flash.now.alert = " Invalid email or password "
#     redirect_to login_path
#   end
# end


  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private
    def login(user)
      session[:user_id] = nil
    end
end