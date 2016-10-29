class SearchesController < ApplicationController
	
	def homepage
		if params[:query].present?
			@stores = Store.search(params[:query], location: params[:location])
		else
			flash[:notice] = "Sorry, no stores have that item. Please revise your search terms"
		end
	end

	def create
	end

	def new
	end

	def show
	end

	def edit
	end

	def update
	end

end
