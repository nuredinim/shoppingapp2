class ListsController < ApplicationController
	def index
		@lists = List.all
	end

	def new
		
	end

	def create
		list = List.new(list_params)
		if list.save
			redirect_to "/lists"
		else
			flash[:errors] = list.errors.full_messages
			redirect_to "/lists/new"
		end
	end

	private
	def list_params
		params.require(:list).permit(:name, :store, :date)
	end

end
