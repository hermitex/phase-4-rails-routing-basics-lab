class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def grades
    students_ordered_by_grade = Student.order(grade: :desc)
    render json: students_ordered_by_grade
  end

  def highest_grade
    student_with_highest_grade = Student.order(grade: :desc).limit 1
    render json: student_with_highest_grade
  end
end
