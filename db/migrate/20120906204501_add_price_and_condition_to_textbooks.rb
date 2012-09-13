class AddPriceAndConditionToTextbooks < ActiveRecord::Migration
  def change
  	add_column :textbooks, :price, :integer
  	add_column :textbooks, :condition, :string
  end
end
