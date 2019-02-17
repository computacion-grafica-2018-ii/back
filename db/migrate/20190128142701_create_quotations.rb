class CreateQuotations < ActiveRecord::Migration[5.2]
  def change
    create_table :quotations do |t|
      t.references :user, foreign_key: true
      t.integer :quantity
      t.datetime :delivery_date
      t.integer :price, :null => true
      t.string :image_path, :null => true
      t.string :document_path, :null => true
      t.integer :status

      t.timestamps
    end
  end
end
