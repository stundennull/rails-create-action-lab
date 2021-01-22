class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

    def new
      @student = Student.new
      @students = Student.all
    end 
      

  def create
    @student = Student.create(params[:first_name], params[:last_name])

    @student.save

    redirect_to student_path(@student)

  end

  # private
   
  # def student_params
  #   params.require(:first_name, :last_name)
    
  # end

end
