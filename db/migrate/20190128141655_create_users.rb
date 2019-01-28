class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.text :password_digest, null: false, comment: "Hash of a password"
      t.integer :role
      t.string :address
      t.string :phone
      t.string :organization

      t.timestamps
    end
  end
end
