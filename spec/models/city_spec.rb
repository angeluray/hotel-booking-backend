require 'rails_helper'

RSpec.describe City, type: :model do
  before(:each) do
    @city = City.new(name: 'Addis Ababa')
  end

  it 'is valid with valid attributes' do
    expect(@city).to be_valid
  end
end
