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

  xit 'can list all students' do

  end

  xit 'list students below threshold' do

  end

    
end