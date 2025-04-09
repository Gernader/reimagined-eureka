require 'pry'

class Student
  attr_reader :name, :age , :score

  def initialize(student)
    @name = student[:name]
    @age = student[:age]
    @score = []

  end
end