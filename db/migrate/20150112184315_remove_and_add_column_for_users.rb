class RemoveAndAddColumnForUsers < ActiveRecord::Migration
  def change
    remove_column :users, :email, :string
    add_column :users, :username, :string
    add_column :users, :avatar, :string
    add_index :users, :username, unique: true
  end
end
