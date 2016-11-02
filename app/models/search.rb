class Search < ActiveRecord::Base
	searchkick autocomplete: ['name']
	has_many :users
	has_many :products
		
	def find_stores(item)
		Store.all.where([])
	end

	def search_walmart(item)
		# Search.create(name: item, user_id: current_user.id)
		# response = HTTParty.get(http://api.walmartlabs.com/v1/search?apiKey={z42q96ksvaqwy6v86pzz5phx}&lsPublisherId={3358587}&query=item)
		# Product.find_or_initialize_by(name: response.name, store: "walmart").update_attributes(price: response.price)
		"you searched for #{item}"
	end


end
