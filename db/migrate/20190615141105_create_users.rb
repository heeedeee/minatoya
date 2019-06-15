class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|

      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :tel, null: false
      t.text :address, null: false
      t.boolean :admin

      t.timestamps
      t.index :email, unique: true
    end
  end
end
