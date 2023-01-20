require 'rails_helper'

RSpec.describe Hotel, type: :model do
  before(:each) do
    @hotel = Hotel.new(name: 'Addis Hotel', description: 'This is a nice hotel', rating: 5, image: 'https://www.google.com', city_id: 1)
  end

  it 'is valid if name of hotel is nil' do
    @hotel.name = 'Black Hotel'
    expect(@hotel).to_not be_valid
  end

  it 'is valid if description of hotel is nil' do
    @hotel.description = 'I do not like it'
    expect(@hotel).to_not be_valid
  end

  it 'is valid if description of hotel is nil' do
    @hotel.rating = nil
    expect(@hotel).to_not be_valid
  end

  it 'is valid if image of hotel is nil' do
    @hotel.image = nil
    expect(@hotel).to_not be_valid
  end

  it 'is valid if city_id of hotel is nil' do
    @hotel.city_id = nil
    expect(@hotel).to_not be_valid
  end
end