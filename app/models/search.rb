class Search < ActiveRecord::Base
	has_many :users
	has_many :products
		
	def find_stores(item)
		Store.all.where([])
	end

	def self.search_walmart(item, current_user)
		search_results = []
		new_search = Search.create(name: item, user_id: current_user.id)
		response = HTTParty.get('http://api.walmartlabs.com/v1/search?query=item&format=json&apiKey=z42q96ksvaqwy6v86pzz5phx')
		response['items'].each do |product|
			search_results << Product.find_or_initialize_by(name: product['name'], store_name: "walmart").update_attributes(price: product['salePrice'].to_i)
		end
		search_results
	end

end
