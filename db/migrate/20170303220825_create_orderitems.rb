class CreateOrderitems < ActiveRecord::Migration[5.0]
  def change
    create_table :orderitems, id: false do |t|
      #t.integer :order_id
      #t.integer :item_id
      t.references :order
      t.references :item
      t.timestamps
    end
  end
end
