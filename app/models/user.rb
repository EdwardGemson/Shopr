class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  	def create_business
		#method to be called in controller where a user can fill out a form to create businesses
	end

	def create_store
		#allows a user who owns a business (need some permissions here) to create a store with a specific location
	end

	def add_products
		#allows a user who owns a business and store to add products to the inventory of said store
	end 

end
