class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :buyer
  has_many :order_items
end
