class AddExtraMajorAndMinorsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :major2, :string, :default => nil
  	add_column :users, :minor, :string, :default => nil
  	add_column :users, :minor2, :string, :default => nil
  	add_column :users, :about_me, :text
  end
end
