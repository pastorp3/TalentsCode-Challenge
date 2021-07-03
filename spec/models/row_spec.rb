require 'rails_helper'

RSpec.describe Row, type: :model do
  let(:user) { User.create(:email => 'test@example.com', :password => '123456' )}
  let(:table) { Table.create(:title => 'Test table', :user_id => user.id)}

  describe "Row model test" do
    row = described_class.new(buyer: 'Test', item_description: 'Item test', item_price: '0',
    item_total: '0', seller_address: 'This is a test', seller: 'Test'
    )

    it "It should pass with valid attributes" do
      row.table_id = table.id
      expect(row).to be_valid  
    end

    it "It should fail without a buyer" do
      row.table_id = table.id
      row.buyer = nil
      expect(row).to_not be_valid  
    end

    it "It should fail without a item_description" do
      row.table_id = table.id
      row.item_description = nil
      expect(row).to_not be_valid  
    end

    it "It should fail without a item_price" do
      row.table_id = table.id
      row.item_price = nil
      expect(row).to_not be_valid  
    end

    it "It should fail without a item_total" do
      row.table_id = table.id
      row.item_total = nil
      expect(row).to_not be_valid  
    end

    it "It should fail without a seller_address" do
      row.table_id = table.id
      row.seller_address = nil
      expect(row).to_not be_valid  
    end

    it "It should fail without a seller" do
      row.table_id = table.id
      row.seller = nil
      expect(row).to_not be_valid 
    end
       
    it "It should fail without a table_id" do
      expect(row).to_not be_valid 
    end

    it "It should pass if table association exist" do
      row.table_id = table.id
      expect(row.table).to eq(table)
    end
    
  end
end
