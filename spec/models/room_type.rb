require 'rails_helper'

RSpec.describe RoomType, type: :model do
  before(:each) do
    @room = Hotel.new(name: 'Studio', description: 'This is a nice room', price: 500)
  end

  it 'is valid if name of room is nil' do
    @room.name = 'Queen'
    expect(@room).to_not be_valid
  end

  it 'is valid if description of room is nil' do
    @room.description = 'I do not like it'
    expect(@room).to_not be_valid
  end

  it 'is valid if description of room is nil' do
    @room.price = nil
    expect(@room).to_not be_valid
  end
end