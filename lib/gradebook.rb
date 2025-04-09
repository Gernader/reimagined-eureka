require 'pry'
class Gradebook
  attr_reader :name, :courses

  def initialize(name)
    @name = name
    @courses = []

  end

  def add_course(course)
    @courses << course
  end

  def list_all_students
    students_per_course = {}
    @courses.each do |course|
      students_per_course[course] = course.students
      
    end
    students_per_course    
  end

  def students_below(threshold)
    @students_below_threshold = []
    @courses.each do |course|
      course.students.each do |student|
        @students_below_threshold <<  if students.score < threshold
              
      end
    end
  @students_below_threshold  
  end


end


