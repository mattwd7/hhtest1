class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
		t.integer :recipient_id
		t.integer :user_id
		t.boolean :unread, :default => true
		t.string :subject
		t.text :text
		t.boolean :replied_to, :default => false
		t.boolean :trashed, :default => false
		t.datetime :trash_time
		
		t.timestamps
    end
	add_column :users, :new_messages, :boolean, :default => false
  end
end
