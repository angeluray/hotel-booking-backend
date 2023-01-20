require 'rails_helper'

RSpec.describe RoomType, type: :model do
  before(:each) do
    @room = RoomType.new(name: 'Studio', description: 'This is a nice room', price: 500)
  end

  it 'is valid with valid attributes' do
    expect(@room).to be_valid
  end

  it 'is valid with description attribute ' do
    @room.description = 'This is a nice room'
    expect(@room).to be_valid
  end

  it 'is valid with price' do
    @room.price = 500
    expect(@room).to be_valid
  end
end
