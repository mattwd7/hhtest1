class AddUserIndex < ActiveRecord::Migration
  def change
	remove_column  :users, :username
	add_column  :users, :username, :string, {:unique => true }
	add_index :users, :username, {:unique => true}
  end
end
