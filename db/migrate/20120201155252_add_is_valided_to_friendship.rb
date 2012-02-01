class AddIsValidedToFriendship < ActiveRecord::Migration
  def change
    add_column :friendships, :is_valided, :boolean

  end
end
