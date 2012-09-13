class EverythingElse < ActiveRecord::Migration
  def change
	create_table :fields do |t|
		t.string :title
    end
    create_table :courses do |t|
		t.integer :field_id
		t.string :title
    end
    create_table :buildings do |t|
		t.string :name
    end
    create_table :quarters do |t|
		t.integer :user_id
		t.string :term
    end
  end
end
