class Search < ActiveRecord::Base
	searchkick autocomplete: ['name']
end