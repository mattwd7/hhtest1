class AddOwnershipToTextbooks < ActiveRecord::Migration
  def change
	add_column :textbooks, :own_it, :boolean
  end
end
