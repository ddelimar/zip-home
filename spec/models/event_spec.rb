require 'spec_helper'

describe Event do
  
  let!(:event) { build :event }

  it 'creates new event' do
    event.should be_valid
  end

  it 'responds to proper methods' do
    event.should respond_to :title
    event.should respond_to :description
    event.should respond_to :beginning
    event.should respond_to :ending
  end

  it 'doesnt create new event if title is blank' do
    event.title = ''
    event.should_not be_valid
  end

  it 'doesnt create new event if description is blank' do
    event.description = ''
    event.should_not be_valid
  end

  it 'doesnt create new event if beginning is nil' do
    event.beginning = nil
    event.should_not be_valid
  end

end
