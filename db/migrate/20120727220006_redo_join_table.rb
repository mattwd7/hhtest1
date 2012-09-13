class RedoJoinTable < ActiveRecord::Migration
  def change
	drop_table :courses_quarters
	
	create_table :courses_quarters, :id => false do |t|
		t.references :course, :quarter
	end
	
	add_index :courses_quarters, [:course_id, :quarter_id]
  end
end
