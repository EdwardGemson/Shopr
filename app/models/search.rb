class Search < ActiveRecord::Base
	has_many :users
	has_many :products
		
	def find_stores(item)
		Store.all.where([])
	end

	def self.search_walmart(item, current_user)
		search_results = []
		new_search = Search.find_or_create_by(name: item, user_id: current_user.id)
		response = HTTParty.get('http://api.walmartlabs.com/v1/search?query=item&format=json&apiKey=z42q96ksvaqwy6v86pzz5phx')
		
		search_results << response.select {|product| product['name'] == new_search.name}
		search_results
	end

end


#search_results << Product.find_or_create_by(name: new_search['name'], store_name: "walmart").update_attributes(price: new_search['salePrice'].to_i)
