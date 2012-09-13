class CoursesQuartersTable < ActiveRecord::Migration
  def change
	create_table :courses_quarters do |t|
		t.references :course
		t.references :quarter
	end
  end
end
