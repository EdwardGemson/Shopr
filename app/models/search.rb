class Search < ActiveRecord::Base
	searchkick autocomplete: ['name']


	def find_stores(item)
		Store.all.where([])
	end
end