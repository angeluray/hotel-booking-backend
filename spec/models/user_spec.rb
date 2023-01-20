require 'rails_helper'

RSpec.describe User, type: :model do
    let(:user) { User.new(name: 'John Doe', username: 'johndoe', email: 'john@gmail.com', password: '123456') }


    it 'is valid with valid attributes' do
      expect(user).to be_valid
    end

    it 'is not valid without a username' do
      user.username = nil
      expect(user).to_not be_valid
    end

    it 'is not valid without email' do
      user.email = nil
      expect(user).to_not be_valid
    end

    it 'is not valid without password' do
      user.password = nil
      expect(user).to_not be_valid
    end
end
