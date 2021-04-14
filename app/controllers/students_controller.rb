class StudentsController < ApplicationController
  skip_before_action :login_required, :only => [:index]
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(params.require(:student).permit(:name, :age))
    if @student.valid?
      redirect_to students_path
    else
      flash[:errors] = @student.errors.full_messages
      redirect_to new_student_path
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
   
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params.require(:student.permit(:name, :age, :avatar)))
    redirect_to_student_path
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy 
    redirect_to students_path
  end

  private 

  def check_params
    params.require(:student).permit(:name, :age, :avatar)
  end

end