class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|

      t.string :name, null: false
      t.text :description, null: false
      t.string :image
      t.integer :price, null: false
      t.integer :category, default: 0, null: false
      t.integer :color, default: 0, null: false
      t.integer :scene, default: 0, null: false 

      t.timestamps
    end
  end
end
