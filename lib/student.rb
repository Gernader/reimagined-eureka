require 'pry'

class Student
  attr_reader :name, :age , :score

  def initialize(student)
    @name = student[:name]
    @age = student[:age]
    @score = []
  end

  def log_score(score)
    @score << score

  end


end