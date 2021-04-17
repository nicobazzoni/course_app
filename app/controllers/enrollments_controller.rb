class EnrollmentsController < ApplicationController
  def index
  end

  def new
    @enrollment = Enrollment.new
  end

  def create
    @enrollment = Enrollment.new(enrollment_params)
    if @enrollment.valid?
      redirect_to user_path
    else
      flash[:errors] = @enrollment.errors.full_messages
      redirect_to new_user_path
    end
  end

  def destroy
    @enrollment = Enrollment.find(params[:id])
    @user = @enrollment.user
    @enrollment.destroy
    redirect_to user_path(@user)

  end

  private
  def enrollment_params
    params.require(:enrollment).permit(:course_id, :user.id)
  end
end
