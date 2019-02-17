class CreateQuotationProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :quotation_products do |t|
      t.references :product, foreign_key: true
      t.references :quotation, foreign_key: true
      t.json :specs

      t.timestamps
    end
  end
end
