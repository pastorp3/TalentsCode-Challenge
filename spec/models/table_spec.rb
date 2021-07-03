require 'rails_helper'

RSpec.describe Table, type: :model do
  let(:user) { User.create(:email => 'test@example.com', :password => '123456' )}
  describe "Table model test" do
    table = described_class.new(title: 'Test')

    it "It should pass with valid attributes" do
      table.user_id = user.id
      expect(table).to be_valid  
    end

    it "It should fail without title" do
      table.title = nil
      table.user_id = user.id
      expect(table).to_not be_valid  
    end

    it "It should fail without user_id" do
      table.user_id = nil
      expect(table).to_not be_valid
    end
  end
  
end
