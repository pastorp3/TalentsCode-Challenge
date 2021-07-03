class CreateRow < ActiveRecord::Migration[6.1]
  def change
    create_table :rows do |t|
      t.string :buyer
      t.text :item_description
      t.string :item_price
      t.string :item_total
      t.text :seller_address
      t.string :seller
      t.references :table, null: false, foregin_key: true

      t.timestamps
    end
  end
end
