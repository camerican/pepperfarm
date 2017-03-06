class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.decimal :cost, precision: 8, scale: 2
      t.references :shipper_id, foreign_key: true
      t.integer :status
      
      t.timestamps
    end
  end
end
