class Product < ActiveRecord::Base
	belongs_to :inventory
	has_many :stores, through: :inventories
end