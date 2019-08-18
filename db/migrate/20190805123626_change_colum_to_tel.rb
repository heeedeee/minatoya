class ChangeColumToTel < ActiveRecord::Migration[5.2]
  def up
    change_column :users, :tel, :string, null: false
  end
  def down
    change_column :users, :tel, :integer, null: false
  end
end
