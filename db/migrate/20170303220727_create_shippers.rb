class CreateShippers < ActiveRecord::Migration[5.0]
  def change
    create_table :shippers do |t|
      t.string :name, limit: 64
      t.string :url

      t.timestamps
    end
  end
end
