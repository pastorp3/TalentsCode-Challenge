class Row < ApplicationRecord
  belongs_to :table


  validates_presence_of :buyer, :item_description, :item_price, :item_total, :seller_address, :seller, :table_id
end
