class User < ActiveRecord::Base
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
