class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name, limit: 128
      t.text :description
      t.decimal :cost, precision: 8, scale: 2
      t.attachment :image
      
      t.timestamps
    end
  end
end
