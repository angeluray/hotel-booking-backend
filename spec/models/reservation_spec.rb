require 'rails_helper'

RSpec.describe Reservation, type: :model do
  before(:each) do
    @reservation = Reservation.new(date: '2020-01-01')
  end

  it 'is date is not nil' do
    @reservation.date = nil
    expect(@reservation).to_not be_valid
  end
end
