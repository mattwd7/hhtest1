class AddColumnToField < ActiveRecord::Migration
  def change
	add_column :fields, :abbr, :string
  end
end
