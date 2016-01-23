class User < ActiveRecord::Base
    after_initialize :set_default_values
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name
  # attr_accessible :title, :body
  has_many :posts
  has_many :comments 
  has_many :friendships
  has_many :likes
  def already_likes?(post)
    self.likes.find(:all, :conditions => ['post_id = ?', post.id]).size > 0
  end
  def already_friends?(user)
    self.friendships.find(:all, :conditions => ['friend_id = ?', user.id]).size > 0
  end
  def set_default_values
    self.name ||= 'USER'
  end
end
