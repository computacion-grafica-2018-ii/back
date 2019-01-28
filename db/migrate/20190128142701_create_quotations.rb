class CreateQuotations < ActiveRecord::Migration[5.2]
  def change
    create_table :quotations do |t|
      t.references :user, foreign_key: true
      t.datetime :delivery_date
      t.integer :price
      t.string :image_path
      t.string :document_path
      t.integer :status

      t.timestamps
    end
  end
end
