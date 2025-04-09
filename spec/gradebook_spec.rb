require 'rspec'
require './lib/student'
require './lib/course'
require './lib/gradebook'

RSpec.describe Gradebook do
  it 'can exist' do
    gradebook = Gradebook.new("Snape"[("Potions", 12)])

    expect(gradebook).to be_an_instance_of(Gradebook)
  end

  it 'can add courses' do

  end

  it 'can list all students' do

  end

  it 'list students below threshold' do
    
  end

    
end