require 'rails_helper'

RSpec.describe City, type: :model do
  before(:each) do
    @city = City.new(name: 'Addis Ababa')
  end

  it 'is valid if name of city is nil' do
    @city.name = 'Black Hotel'
    expect(@city).to_not be_valid
  end
end