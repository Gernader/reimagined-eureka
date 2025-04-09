require 'rspec'
require './lib/student'

RSpec.describe Student do
  it 'exists' do
    student = Student.new({name: "Morgan", age: 21})

    expect(student).to be_an_instance_of(Student)
  end

  it 'remembers names' do
    student = Student.new({name: "Morgan", age: 21})

    expect(student.name).to eq("Morgan")
  end

  it 'remembers ages' do
    student = Student.new({name: "Morgan", age: 21})

    expect(student.age).to eq(21)
  end

  it 'remembers scores' do
    student = Student.new({name: "Morgan", age: 21})

    expect(student.score).to eq([])
  end

  it 'stores scores' do
    student = Student.new({name: "Morgan", age: 21})
    student.log_score(89)
    student.log_score(78)

    expect(student.score).to eq([89, 78])
  end

  it 'can give semester grade' do
    student = Student.new({name: "Morgan", age: 21})
    student.log_score(89)
    student.log_score(78)
    
    expect(student.grade).to eq(83.5)
  end

  
end