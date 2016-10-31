class Search < ActiveRecord::Base
	searchkick autocomplete: ['name']
	has_many :users

	def find_stores(item)
		Store.all.where([])
	end
end