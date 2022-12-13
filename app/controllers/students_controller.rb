class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def grades
    students = Student.order(:grade).reverse
    render json: students
  end

  def highest_grade
    students = Student.order(:grade).reverse.first
    render json: students
  end
end
