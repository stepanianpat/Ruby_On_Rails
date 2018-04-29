class StudentsController < ApplicationController
  def new
    @dojo=Dojo.find(params[:dojo_id])
    @dojos=Dojo.all
  end

  def create
    student=Student.new(student_params)
    if student.save
      redirect_to "/dojos/#{student.dojo_id}",notice: "You have successfully created a student!"
    else
      flash[:errors]=student.errors.full_messages
      redirect_to :back
    end
  end

  def show
    @dojo=Dojo.find(params[:dojo_id])
    # @student=Student.find(params[:id])
    @student = Student.with_dojo(params[:id])
    @cohort = Student.cohort(@student)
  end

  def edit
    @student=Student.find(params[:id])
    @dojo=Dojo.find(params[:dojo_id])
    @dojos=Dojo.all
  end

  def update
    student=Student.find(params[:id])
    if student.update(student_params)
      redirect_to "/dojos/#{student.dojo_id}/students/#{student.id}", notice:"You have successfully update a student!"
    else flash[:errors]=student.errors.full_messages
      redirect_to :back
    end
  end

  def destroy
    student=Student.find(params[:id]).destroy
    redirect_to "/dojos/#{student.dojo_id}"
  end

  private
  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :dojo_id)
  end
end
