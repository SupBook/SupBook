class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :reciever, :class_name => "User"

end
