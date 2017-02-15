class SearchesController < ApplicationController
	
	def homepage
		
	end

	def create
		@search = Search.create(name: params["query"], user_id: current_user.id)
		# @search_results = Search.search_walmart(params["query"], current_user) #this will call the walmart API for the search term and return a 
		 redirect_to search_path(@search.id) 
	end

	def new

	end

	def show
		@search = Search.find_by(id: params["id"])
		@search_results = Search.search_walmart(@search.name, current_user)

	end

	def edit

	end

	def update

	end

	# def autocomplete
 #    render json: Search.search(params[:query], autocomplete: true, limit: 10).map(&:name)
 #  	end

end
