class ImportTsv < ApplicationController
  def initialize(data, table_id)
    @data = data
    @table_id = table_id
  end

  def save

    CSV.foreach(@data) do |row|

      row = row[0].split(/(\t)/).select { |w| w != "\t" }
      Row.create(buyer: row[0], item_description: row[1], item_price: row[2], item_total: row[3], seller_address: row[4], seller: row[5], table_id: @table_id)
      
    end
  end
end