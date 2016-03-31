i uu.require 'rails_helper'

RSpec.describe User, type: :model do

  context "empty user" do
    let(:user){User.new}

    it 'change first name' do
      user.first_name = 'bob'

      expect(user.first_name).to eq('bob')
    end

    it 'something else' do
      expect(user.first_name).to eq(nil)
    end

    it 'test upper case in initializer' do
    end

  end

  context "prefilled user" do
    let(:user){ build(:user)}

    it 'first name should always be present' do
      user.first_name = nil

      expect(user.valid?).to eq(false)
    end

    it 'email should always be present' do
      user.email = nil

      expect(user.valid?).to eq(false)
    end

    it '#foo should return bar' do
      expect(User.foo).to eq('bar')
    end

  end


end
