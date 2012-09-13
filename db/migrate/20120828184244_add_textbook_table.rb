class AddTextbookTable < ActiveRecord::Migration
  def change
	create_table :textbooks do |t|
		t.integer :user_id
		t.integer :course_id
	end
  end
end
