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

  def grade
    @score.sum.to_f / @score.size
  end

end