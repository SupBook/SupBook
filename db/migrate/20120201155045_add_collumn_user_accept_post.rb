class AddCollumnUserAcceptPost < ActiveRecord::Migration
  def up
     add_column :users, :accept_post, :boolean, :default => 1
  end

  def down
     remove_column :users, :accept_post
  end
end
