class UsersController < ApplicationController
  skip_before_action :login_required, :only => [:index]
  
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      redirect_to user_path
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def show 
    @user = User.find_by_id(params[:id])
  end

  def edit
    @user = User.find(params[:id])
   
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params) 
    redirect_to user_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy 
    redirect_to user_path
  end

  private 

  def user_params
    params.require(:user).permit(:username, :password, :avatar)
  end

end