class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.references :owner
      t.references :reciever
      t.date :created_at

      t.timestamps
    end
  end
end
