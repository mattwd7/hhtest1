class AddIndex < ActiveRecord::Migration
  def change
	add_index :courses_quarters, [:course_id, :quarter_id]
  end
end
