class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.string :supplier
      t.integer :delivery_delay
      t.string :name
      t.string :code
      t.integer :quantity
      t.integer :price

      t.timestamps
    end
  end
end
