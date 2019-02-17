class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.json :properties
      t.string :assemblyPath
      t.string :assemblyFile
      t.string :excelFile

      t.timestamps
    end
  end
end
