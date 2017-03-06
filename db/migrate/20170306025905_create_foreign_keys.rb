class CreateForeignKeys < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :orders, :users, column: :customer_id
    add_foreign_key :orders, :shippers
    add_foreign_key :order_items, :orders
    add_foreign_key :order_items, :items
  end
end
