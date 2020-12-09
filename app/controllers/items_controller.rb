class ItemsController < ApplicationController
	def index
		@items = Item.all
	end

	def new
	end

	def create
		item = Item.new(item_params)
		if item.save
			redirect_to "/items"
		else
			flash[:errors] = item.errors.full_messages
			redirect_to "/items/new"
		end
	end

	def show
		@lists = Item.find(params[:id]).lists
	end

	def edit
		@item = Item.find(params[:id])
	end

	def update
		item = Item.find(params[:id])
		if item.update(item_params)
			redirect_to "/items"
		else
			flash[:errors] = item.errors.full_messages
			redirect_to "/items/#{item.id}/edit"
		end
	end

	def destroy
		item = Item.find(params[:id])
		item.destroy
		redirect_to "/items"
	end

	private
	def item_params
		params.require(:item).permit(:name, :price, :quantity)
	end
end
