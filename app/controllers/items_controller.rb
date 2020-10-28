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

	private
	def item_params
		params.require(:item).permit(:name, :price, :quantity)
	end
end
