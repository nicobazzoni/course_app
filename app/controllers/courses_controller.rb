class CoursesController < ApplicationController
  
  def index
    @courses = Course.all 
  end

  def show
    @courses = Course.all 
  end

  private 
  def course_params
    params.require(:user).permit(:name, :description)
  end
end
