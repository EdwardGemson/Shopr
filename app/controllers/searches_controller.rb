class SearchesController < ApplicationController
	
	def homepage
		
	end

	def create
		@search = search_walmart(query)
		render :show(@search.id)
	end

	def new
	end

	def show

	end

	def edit
	end

	def update
	end

	def autocomplete
    render json: Search.search(params[:query], autocomplete: true, limit: 10).map(&:name)
  	end

end


# if params[:query].present?
# 			@search = Store.search(params[:query], location: params[:location])
# 			binding.pry
# 		else
# 			flash[:notice] = "Sorry, no stores have that item. Please revise your search terms" #this is showing up after logging in, not after searches
# 		end