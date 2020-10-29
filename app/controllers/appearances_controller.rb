class AppearancesController < ApplicationController
	def index
		@lists = List.all
		@items = Item.all
		return @lists, @items
	end

	def create
		appearance = Appearance.new(appearance_params)
		if appearance.save
			redirect_to "/lists"
		else
			flash[:errors] = appearance.errors.full_messages
			redirect_to "/appearance/new"
		end
	end

	private 
	def appearance_params
		params.require(:appearance).permit(:list_id, :item_id)
	end
end
