require 'rspec'
require './lib/student'

RSpec.describe Student do
  before(:each) do
    student = Student.new({name: "Morgan", age: 21})
  end

  it 'exists' do
    #student = Student.new({name: "Morgan", age: 21})

    expect(student).to be_an_instance_of(Student)
  end

  xit 'remembers names' do
    expect(student.name).to eq("Morgan")
  end

  xit 'remembers ages' do
    expect(student.age).to eq(21)
  end

  xit 'remembers scores' do
    expect(student.score).to eq([])
  end

  xit 'stores scores' do
    student.log_score(89)
    student.log_score(78)
    expect(student.score).to eq([89, 78])
  end

  xit 'can give semester grade' do
    expect(student.grade).to eq(83.5)
  end

  
end