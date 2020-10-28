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

	def show
		@items = List.find(params[:id]).items
	end

	def edit
		@list = List.find(params[:id])
	end

	def update
		list = List.find(params[:id])
		if list.update(list_params)
			redirect_to "/lists"
		else
			flash[:errors] = list.errors.full_messages
			redirect_to "/lists/#{list.id}/edit"
		end
	end

	def destroy
		list = List.find(params[:id])
		list.destroy
		redirect_to "/lists"
	end

	private
	def list_params
		params.require(:list).permit(:name, :store, :date)
	end

end
