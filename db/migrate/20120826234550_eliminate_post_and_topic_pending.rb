class EliminatePostAndTopicPending < ActiveRecord::Migration
  def change
    remove_column :forem_posts, :state
	remove_column :forem_topics, :state
    add_column :forem_topics, :state, :string, :default => 'approved'
    add_column :forem_posts, :state, :string, :default => 'approved'
	add_index :forem_topics, :state
    add_index :forem_posts, :state
  end
end
