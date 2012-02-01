class User < ActiveRecord::Base
  # Friendships
  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_attached_file :avatar,
                    :styles => {
                      :'300' => "300x300#",
                      :'150' => '150x150#',
                      :'100' => "100x100#",
                      :'70' => "70x70#",
                      :'50' => "50x50#",
                      :'35' => "35x35#",
                      :'30' => "30x30#"
                    }

  has_many :posts
end
