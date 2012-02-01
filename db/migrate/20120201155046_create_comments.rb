class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :id
      t.integer :owner_id
      t.integer :post_id
      t.text :content
      t.date :created_at

      t.timestamps
    end
  end
end
