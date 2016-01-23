class Post < ActiveRecord::Base
  attr_accessible :description, :user_id
  has_many :likes
  has_many :comments
  belongs_to :user
  
end
