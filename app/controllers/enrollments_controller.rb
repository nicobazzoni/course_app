class EnrollmentsController < ApplicationController
  def index
  end

  def new
    @enrollment = Enrollment.new 
  end

  def create
    @enrollment = Enrollment.create(params.require(:enrollment).permit(:course_id, :user_id, :description))
    redirect_to user_path(@enrollment.user_id)
  end

  def destroy
    @enrollment = Enrollment.find(params[:id])
    @user = @enrollment.user
    @enrollment.destroy
    redirect_to user_path(@user)

  end
end
