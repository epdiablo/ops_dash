class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :sessions, :dependent => :delete_all

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :email, :name, :role
  
  
  
  
  def apply_omniauth(auth)
  # In previous omniauth, 'user_info' was used in place of 'raw_info'
  self.email = auth['extra']['raw_info']['email']
  self.name = auth['extra']['raw_info']['name']
  # Again, saving token is optional. If you haven't created the column in authentications table, this will fail
  sessions.build(:provider => auth['provider'], :uid => auth['uid'], :token => auth['credentials']['token'])
  end



end
