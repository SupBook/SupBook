class Post < ActiveRecord::Base
  belongs_to :owner, :class_name => "User" 
  belongs_to :reciever, :class_name => "User"
  has_many :comments

end
