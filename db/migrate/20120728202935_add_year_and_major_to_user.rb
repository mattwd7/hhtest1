class AddYearAndMajorToUser < ActiveRecord::Migration
  def change
	add_column :users, :major, :string
	add_column :users, :year, :integer
	add_column :buildings, :population, :integer
  end
end
