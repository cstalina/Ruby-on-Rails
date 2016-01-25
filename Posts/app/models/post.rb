class Post < ActiveRecord::Base

validates :title, presence: true, length: {minimum: 5, too_short: "Title length too small"}
validates :content , presence: true, length: {minimum: 5 , too_short: "Content length too small"}
end
