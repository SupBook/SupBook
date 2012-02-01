class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :id
      t.text :content
      t.integer :owner_id
      t.integer :reciever_id
      t.date :created_at

      t.timestamps
    end
  end
end
