require 'rails_helper'
require 'import_tsv'

RSpec.describe ImportTsv do
  let(:user) { User.create(:email => 'test@example.com', :password => '123456' )}
  let(:table) { Table.create(:title => 'Test table', :user_id => user.id)}

  describe 'Impoer Tsv test' do
    it 'It should pass if rows on table are the same as rows on file' do
      file = File.open('spec/classes/example.tab - example.tab.tsv')
      ImportTsv.new(file,table.id).save
      expect(table.rows.count).to eq(5)  
    end
  end

end