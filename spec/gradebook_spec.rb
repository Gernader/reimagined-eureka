require 'rspec'
require './lib/student'
require './lib/course'
require './lib/gradebook'

RSpec.describe Gradebook do
  it 'can exist' do
    gradebook = Gradebook.new("Snape")

    expect(gradebook).to be_an_instance_of(Gradebook)
    
  end

  it 'can add courses' do
    gradebook = Gradebook.new("Snape")
    @course1 = Course.new("Potions", 12)
    gradebook.add_course(@course1)

    expect(gradebook.courses).to eq([@course1])


  end

  it 'can list all students' do
    @gradebook = Gradebook.new("Snape")
    @course1 = Course.new("Potions", 12)
    @course2 = Course.new("Transfiguration", 12)
    @student1 = Student.new({ name: "Harry", age: 14})
    @student2 = Student.new({ name: "Ron", age: 14})
    @student3 = Student.new({ name: "Hermione", age: 14})

    @gradebook.add_course(@course1)
    @gradebook.add_course(@course2)
    @course1.enroll(@student2)
    @course1.enroll(@student3)
    @course2.enroll(@student1)

    expect(@gradebook.list_all_students).to be_a(Hash)
    expect(@course1.students).to include(@student2, @student3)
    expect(@course2.students).to include(@student1)

    p @gradebook.list_all_students
    

  end

  it 'list students below threshold' do
    @gradebook = Gradebook.new("Snape")
    @course1 = Course.new("Potions", 12)
    @course2 = Course.new("Transfiguration", 12)
    @student1 = Student.new({ name: "Harry", age: 14})
    @student2 = Student.new({ name: "Ron", age: 14})
    @student3 = Student.new({ name: "Hermione", age: 14})

    @gradebook.add_course(@course1)
    @gradebook.add_course(@course2)
    @course1.enroll(@student2)
    @course1.enroll(@student3)
    @course2.enroll(@student1)
    @student1.log_score(83)
    @student1.log_score(50)
    @student1.log_score(70)
    @student1.log_score(80)
    @student2.log_score(50)
    @student2.log_score(60)
    @student2.log_score(47)
    @student2.log_score(75)
    @student3.log_score(86)
    @student3.log_score(98)
    @student3.log_score(78)
    @student3.log_score(98)
    
    

    expect(@gradebook.students_below(85)).to include(@student1, @student2)



  end

    
end