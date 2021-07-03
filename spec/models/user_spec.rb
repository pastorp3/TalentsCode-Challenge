require 'rails_helper'

RSpec.describe User, type: :model do

  user = described_class.new(email: 'test@example.com', password: '123456')

  describe "User model test" do

    it "It should pass with valid attributes" do
      expect(user).to be_valid
    end

    it "It should fail without a email" do
      user.email = nil
      expect(user).to_not be_valid
    end
    
    it "It should fail without password" do
      user.password = nil
      expect(user).to_not be_valid
    end
  end
end
