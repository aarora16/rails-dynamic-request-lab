class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    find_student = Student.find(params[:id])
    @student = find_student.first_name + " " + find_student.last_name
  end
end